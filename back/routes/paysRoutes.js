// paysRoute.js
import express from 'express';
import paysController from './../controllers/paysController.js';

const router = express.Router();

// Define routes for countries
router.use('/pays', paysController);

export default router;
