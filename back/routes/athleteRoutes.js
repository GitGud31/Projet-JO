// athleteRoute.js
import express from 'express';
import athleteController from './../controllers/athleteController.js';

const router = express.Router();

// Define routes for athletes
router.use('/athletes', athleteController);

export default router;
