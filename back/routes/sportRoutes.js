// sportRoute.js
import express from 'express';
import sportController from './../controllers/sportController.js';

const router = express.Router();

// Define routes for sports
router.use('/sports', sportController);

export default router;
