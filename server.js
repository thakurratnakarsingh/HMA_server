const express = require('express');
const app = express();
const PORT = process.env.PORT || 3081;
const path = require('path');

// Import routes
const exampleRoutes = require('./routes/routes');

// Middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/splash_images', express.static(process.env.PATH_IMAGE));
app.use('/ads_path', express.static(process.env.ACCESS_ADS));
app.use('/file_path', express.static(process.env.PATH_FILE));
app.use('/screen_images', express.static(process.env.SCREENSHOTS_PATH));



app.use('/api/example', exampleRoutes);

// Start server
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
