import express from 'express';
import authController from './../controllers/authenticationController.js';
import verify_token from "./../middlewares/authMiddleware.js";


const router = express.Router();

// Route for user login
router.post('/login', authController.login);

// Route for user logout
router.route('/logout').post(authController.logout);

// Route for adding a new user
router.post('/signup',verify_token, authController.addUser);

export default router;