// athleteEpreuveRoute.js
import express from 'express';
import athleteEpreuveController from './../controllers/athleteEpreuveController.js';

const router = express.Router();

// Define routes for athlete-epreuve associations
router.use('/athlete-epreuves', athleteEpreuveController);

export default router;
