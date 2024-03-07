import express from 'express';
import authController from './../controllers/authenticationController.js';

const router = express.Router();

// Route for user login
router.post('/login', authController.login);

// Route for adding a new user
router.post('/signup', authController.addUser);

export default router;