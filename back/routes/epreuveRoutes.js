// epreuveRoute.js
import express from 'express';
import epreuveController from './../controllers/epreuveController.js';

const router = express.Router();

// Define routes for epreuves
router.use('/epreuves', epreuveController);

export default router;
