// epreuveRoute.js
import express from 'express';
import epreuveController from './../controllers/epreuveController.js';
import verify_token from '../middlewares/authMiddleware.js';

const router = express.Router();

// Define routes for epreuves
router.use('/epreuves', verify_token,epreuveController);

export default router;
