// paysEpreuveRoute.js
import express from 'express';
import paysEpreuveController from './../controllers/paysEpreuveController.js';

const router = express.Router();

// Define routes for pays-epreuve associations
router.use('/pays-epreuves', paysEpreuveController);

export default router;
