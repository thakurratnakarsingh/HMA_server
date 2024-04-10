const express = require('express');
const router = express.Router();
const controller = require('../controllers/controller');

router.get('/splash_screen', controller.getAllSplashScreens);
router.post('/splash_screen', controller.createSplashScreen); //dele
router.post('/version', controller.addVersionUpdate); 
router.post('/entertainment', controller.entertainment);
router.get('/entertainment', controller.getEntertainment); 
router.get('/entertainmen_id', controller.getEntertainmentById); 
router.get('/home',controller.getHome);
router.post('/add_slider', controller.slider);
router.post('/register', controller.registerUser);
module.exports = router;








/*
api made fort the dashboard 

 add boolean to show previous things of splash
 splash delete api

 entertainment edit and delete api 

 slider edit and delete api 
 silder me two types k slider hoga ek jo enternament se aayega dusra slider table se jis adds aur information ho ga



*/