
const dotenv = require('dotenv');
const multer = require('multer');
const db = require('../config/database');
const fs = require('fs');
const path = require('path');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');
const { v4: uuidv4 } = require('uuid');
const { Console } = require('console');
dotenv.config();

exports.getAllSplashScreens = (req, res) => {
    db.query('SELECT * FROM splash_screen ORDER BY _id DESC LIMIT 1', (err, result) => {
        if (err) {
            console.error('Error executing query: ', err);
            res.status(500).json({ error: 'Error retrieving splash screen' });
            return;
        }
        if (result.length === 0) {
            res.status(404).json({ error: 'No splash screen found' });
            return;
        }
        const latestSplash = result[0];
        const filename = path.basename(latestSplash.splash_path);
        const completeUrl = `${process.env.BASE_URL}/splash_images/${filename}`;
        res.status(200).json({ status: 200, message: "Get data successfully", data: { ...latestSplash, splash_path: completeUrl } });
    });
};


const upload = multer({ dest: process.env.IMAGE_PATH }); // Specify the destination directory to save uploaded files

exports.createSplashScreen = [
    upload.single('file'),
    (req, res) => {
        const { image_name } = req.body;

        if (!image_name || !req.file) {
            res.status(400).json({ error: 'Image name and file are required' });
            return;
        }

        const originalFilename = req.file.originalname;
        const fileExtension = path.extname(originalFilename); // Extract file extension

        if (!fileExtension) {
            res.status(400).json({ error: 'File has no extension' });
            return;
        }

        const imagePath = `${req.file.path}${fileExtension}`; // Append extension to file path

        fs.rename(req.file.path, imagePath, (err) => { // Rename the file with extension
            if (err) {
                console.error('Error renaming file: ', err);
                res.status(500).json({ error: 'Error saving uploaded file' });
                return;
            }

            // Insert record into splash_screen table
            db.query('INSERT INTO splash_screen (splash_name, splash_path) VALUES (?, ?)', [image_name, imagePath], (err, result) => {
                if (err) {
                    console.error('Error executing query: ', err);
                    res.status(500).json({ error: 'Error creating splash screen' });
                    return;
                }
                res.status(200).json({ message: 'Splash screen created successfully' });
            });
        });
    }
];



exports.addVersionUpdate = async (req, res) => {
    const { versionName, versionNumber, platform } = req.body;

    // Validation
    if (!versionName) {
        return res.status(400).json({ error: 'version name is required' });
    }
    if (!versionNumber) {
        return res.status(400).json({ error: 'version number is required' });
    }
    if (!platform || (platform !== 'android' && platform !== 'ios')) {
        return res.status(400).json({ error: 'platform must be either "android" or "ios"' });
    }

    // const columnName = platform === 'android' ? 'android' : 'ios';

    // Insert into the database
    db.query(`INSERT INTO version (version_name, version_number, platform) VALUES (?, ?, ?)`,
        [versionName, versionNumber, platform],
        (err, result) => {
            if (err) {
                console.error('Error executing query: ', err);
                return res.status(500).json({ error: 'Error creating version update' });
            }
            res.status(201).json({ message: 'Version updated successfully' });
        }
    );
};




exports.entertainment = [

    multer({
        storage: multer.diskStorage({
            destination: function (req, file, cb) {
                if (file.mimetype === 'image/jpeg'
                    || file.mimetype === 'image/png') {
                    cb(null, process.env.SCREENSHOTS);
                }
                else {
                    cb(null, process.env.FILE_PATH);
                }
            },
            filename: function (req, file, cb) {
                const name = Date.now() + '-' + file.originalname;
                cb(null, name);
            }
        }),

    }).fields([{ name: 'file', maxCount: 1 }, { name: 'screen1', maxCount: 1 }, { name: 'screen2', maxCount: 1 }, { name: 'screen3', maxCount: 1 }, { name: 'screen4', maxCount: 1 },
    { name: 'screen5', maxCount: 1 }]),
    async (req, res) => {
        try {
            const videoFilePath = req.files.file[0].path;
            const screen1 = req.files.screen1[0].path;
            const screen2 = req.files.screen2[0].path;
            const screen3 = req.files.screen3[0].path;
            const screen4 = req.files.screen4[0].path;
            const screen5 = req.files.screen5[0].path;


            const { name, category, platform, language, genre, release_date, stars, description, url } = req.body;
            if (!name || !category || !platform || !language || !genre || !release_date || !stars || !description || !url || !videoFilePath) {
                return res.status(400).json({ error: 'All fields are required' });
            }


            await db.query('INSERT INTO entertainment (name, category, platform, language, genre, release_date, stars, description, file_path, url, screen1, screen2, screen3, screen4, screen5) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                [name, category, platform, language, genre, release_date, stars, description, videoFilePath, url, screen1, screen2, screen3, screen4, screen5]);

            res.status(201).json({ status: 200, message: 'Entertainment data saved successfully', data: [] });
        } catch (error) {
            console.error('Error:', error);
            res.status(500).json({ error: 'Internal Server Error' });
        }
    }
];

exports.getEntertainment = async (req, res) => {
    try {
        const { category, search, page } = req.query;
        const itemsPerPage = 24;
        const pageNumber = parseInt(page) || 1;
        const offset = (pageNumber - 1) * itemsPerPage;
        let sql = 'SELECT * FROM entertainment';

        const values = [];
        if (category) {
            sql += ' WHERE category = ?';
            values.push(category);
        }
        if (search) {
            // Add a space before 'AND'
            sql += (category ? ' AND' : ' WHERE') + ' LOWER(name) LIKE ?';
            values.push(`%${search.toLowerCase()}%`);
        }

        // Order by _id in descending order
        sql += ' ORDER BY _id DESC LIMIT ? OFFSET ?';
        values.push(itemsPerPage, offset);

        db.query(sql, values, (err, result) => {
            if (err) {
                console.error('Error executing query: ', err);
                res.status(500).json({ status: 500, message: 'Error retrieving data', data: null });
                return;
            }
            if (result.length === 0) {
                res.status(404).json({ status: 404, message: 'No data found', data: null });
                return;
            }

            // const results = result.map(item => {
            //     const filename = path.basename(item.file_path);
            //     const screen1 = path.basename(item.screen1);
            //     const screen2 = path.basename(item.screen2);
            //     const screen3 = path.basename(item.screen3);
            //     const screen4 = path.basename(item.screen4);
            //     const screen5 = path.basename(item.screen5);
            //     const completeUrl = `${process.env.BASE_URL}/file_path/${filename}`;
            //     const screens1 = `${process.env.BASE_URL}/screen_images/${screen1}`;
            //     const screens2 = `${process.env.BASE_URL}/screen_images/${screen2}`;
            //     const screens3 = `${process.env.BASE_URL}/screen_images/${screen3}`;
            //     const screens4 = `${process.env.BASE_URL}/screen_images/${screen4}`;
            //     const screens5 = `${process.env.BASE_URL}/screen_images/${screen5}`;
            //     return {
            //         ...item,
            //         file_path: completeUrl,
            //         screen1: screens1,
            //         screen2: screens2,
            //         screen3: screens3,
            //         screen4: screens4,
            //         screen5: screens5,
            //     };
            // });
            const results = result.map(item => ({
                _id: item._id,
                name: item.name,
                category: item.category,
                platform: item.platform,
                screen1: `${process.env.BASE_URL}/screen_images/${path.basename(item.screen1)}`
            }));
            res.status(200).json({ status: 200, message: 'Get successful', data: results });
        });
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ status: 500, message: 'Internal Server Error', data: null });
    }
};


exports.getEntertainmentById = async (req, res) => {
    try {
        const { id } = req.query;
        let sql = 'SELECT * FROM `entertainment` WHERE _id = ?'; // Correct SQL query
        db.query(sql, [id], (err, result) => { // Pass id as a parameter
            if (err) {
                console.error('Error executing query: ', err);
                return res.status(500).json({ status: 500, message: 'Error retrieving data', data: null });
            }
            if (result.length === 0) {
                return res.status(404).json({ status: 404, message: 'No data found', data: null });
            }

            const results = result.map(item => {
                const filename = path.basename(item.file_path);
                const screen1 = path.basename(item.screen1);
                const screen2 = path.basename(item.screen2);
                const screen3 = path.basename(item.screen3);
                const screen4 = path.basename(item.screen4);
                const screen5 = path.basename(item.screen5);
                const completeUrl = `${process.env.BASE_URL}/file_path/${filename}`;
                const screens1 = `${process.env.BASE_URL}/screen_images/${screen1}`;
                const screens2 = `${process.env.BASE_URL}/screen_images/${screen2}`;
                const screens3 = `${process.env.BASE_URL}/screen_images/${screen3}`;
                const screens4 = `${process.env.BASE_URL}/screen_images/${screen4}`;
                const screens5 = `${process.env.BASE_URL}/screen_images/${screen5}`;
                return {
                    ...item,
                    file_path: completeUrl,
                    screen1: screens1,
                    screen2: screens2,
                    screen3: screens3,
                    screen4: screens4,
                    screen5: screens5,
                };
            });
            return res.status(200).json({ status: 200, message: 'Get successful', data: results });
        });


    } catch (error) {
        console.error('Error:', error);
        return res.status(500).json({ status: 500, message: 'Internal Server Error', data: null });
    }
}


async function getHomeData() {
    return new Promise((resolve, reject) => {
        let sql = `
        SELECT category_name, _id, name, screen1, category, platform
        FROM (
            SELECT c.category_name, e._id, e.name, e.screen1, e.category, e.platform,
            ROW_NUMBER() OVER (PARTITION BY e.category ORDER BY e._id DESC) AS row_num
            FROM entertainment e
            JOIN category c ON e.category = c._id
        ) ranked_entertainment
        WHERE row_num <= 12;
     `;
        db.query(sql, (err, result) => {
            if (err) {
                console.error('Error executing query: ', err);
                res.status(500).json({ status: 500, message: 'Error retrieving data', data: null });
                return;
            }
            if (result.length === 0) {
                res.status(404).json({ status: 404, message: 'No data found', data: null });
                return;
            }

            // Format and structure the data as required
            let responseData = {};
            result.forEach(row => {
                const category_name = row.category_name;
                const categoryId = row.category;
                // Extract filename from screen1 path
                const screenFilename = path.basename(row.screen1);
                // Construct complete URL
                const completeUrl = `${process.env.BASE_URL}/screen_images/${screenFilename}`;
                delete row.category_name;
                // Add category back to the response
                row.category = categoryId;
                // Replace screen1 with completeUrl
                row.completeUrl = completeUrl;
                delete row.screen1;
                if (!responseData[category_name]) {
                    responseData[category_name] = [];
                }
                // Check if the current entry already exists in the responseData for its category
                const existingEntry = responseData[category_name].find(entry => entry._id === row._id);
                if (!existingEntry) {
                    // Add the current entry if it's not a duplicate
                    responseData[category_name].push({ ...row });
                }
            });

            // Truncate extra entries if there are more than 12
            Object.keys(responseData).forEach(categoryName => {
                // Limit each category to 12 entries
                responseData[categoryName] = responseData[categoryName].slice(0, 12);
            });


            resolve(responseData);
        });
    });
}

// Function to fetch version based on platform
async function getVersion(platform) {
    return new Promise((resolve, reject) => {
        const sqlVersion = `SELECT * FROM version WHERE platform = ? ORDER BY _id DESC LIMIT 1`;
        db.query(sqlVersion, [platform], (err, result) => {
            if (err) {
                reject(err);
            } else {
                resolve(result);
            }
        });
    });
}

async function getSlider() {
    return new Promise((resolve, reject) => {
        const sqlVersion = `SELECT * FROM ads_slider ORDER BY _id DESC LIMIT 4`;
        db.query(sqlVersion ,(err, result) => {
            if (err) {
                reject(err);
            } 
            if(result.length ===0){
                res.status(404).json({ status: 404, message: 'No data found', data: null });
                return;
            }

           
            const results =  result.map(item =>{
                const screenFilename = path.basename(item.poster_path);
                const completeUrl = `${process.env.BASE_URL}/ads_path/${screenFilename}`;
                     return {
                        ...item,
                        poster_path: completeUrl,
                     }

            });
           

            resolve(results);
        });
    });
}


// Controller function to handle /home endpoint
exports.getHome = async (req, res) => {
     const { platform } = req.query;
    try {
        // Fetching version based on platform
        const androidVersion = await getVersion(platform);

        // Fetching home data
        const homeData = await getHomeData();
        const slider = await getSlider();

        res.status(200).json({
            status: 200,
            message: 'Get successful',
            data: {
                version: androidVersion,
                entertainments : homeData,
                sliders : slider
            }
        });
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ status: 500, message: 'Internal Server Error', data: null });
    }
};








const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        if (file.mimetype === 'image/jpeg' || file.mimetype === 'image/png') {
            cb(null, process.env.ADS_PATH_STORE);
        } else {
            cb(new Error('Invalid file type'), null);
        }
    },
    filename: function (req, file, cb) {
        const name = Date.now() + '-' + file.originalname;
        cb(null, name);
    }
});

exports.slider = [
    multer({ storage: storage }).fields([{ name: 'poster', maxCount: 1 }]),
    async (req, res) => {
        try {
            const { adsName, ads_url } = req.body;
            const posterImage = req.files['poster'][0].path;

            // Validation
            if (!adsName) {
                return res.status(400).json({ error: 'Ads name is required' });
            }
            if (!ads_url) {
                return res.status(400).json({ error: 'Ads url is required' });
            }
            if (!posterImage) {
                return res.status(400).json({ error: 'Poster is required' });
            }

            db.query(`INSERT INTO ads_slider (ads_name, ads_url, poster_path) VALUES (?, ?, ?)`,
                [adsName, ads_url, posterImage],
                (err, result) => {
                    if (err) {
                        console.error('Error executing query: ', err);
                        return res.status(500).json({ error: 'Error creating version update' });
                    }
                    res.status(200).json({ status: 200, message: 'Ads updated successfully', data: [] });
                }
            );
        } catch (error) {
            console.error('Error:', error.message);
            return res.status(500).json({ error: 'Server error' });
        }
    }
];



exports.registerUser = async (req, res) => {
    const { name, email, confirmEmail, password } = req.body;

    // Validate email
    if (email !== confirmEmail) {
        return res.status(400).json({ error: 'Emails do not match' });
    }

    // Check if user with the same email already exists
    const existingUser = await db.query('SELECT * FROM user WHERE email = ?', [email]);
    if (existingUser.length > 0) {
        return res.status(400).json({ error: 'User with this email already exists' });
    }

    // Hash password
    const hashedPassword = await bcrypt.hash(password, 10);

    // Generate JWT token
    const token = jwt.sign({ email }, process.env.JWT_SECRET, { expiresIn: '1h' });

    // Save user details and token in the database
    const newUser = await db.query('INSERT INTO user (name, email, password, token) VALUES (?, ?, ?, ?)', [name, email, hashedPassword, token]);

    res.status(201).json({ token, user: { name, email } });
};