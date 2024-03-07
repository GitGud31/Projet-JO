// athleteEpreuveController.js
import express from 'express';
import models from './../database/index.js';

const router = express.Router();

// Get all athlete-epreuve associations
router.get('/', async (req, res) => {
  try {
    const athleteEpreuves = await models.AthleteEpreuveModel.findAll();
    res.json(athleteEpreuves);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Get athlete-epreuve association by ID
router.get('/:id', async (req, res) => {
  try {
    const athleteEpreuve = await models.AthleteEpreuveModel.findByPk(req.params.id);
    if (!athleteEpreuve) {
      res.status(404).json({ message: 'Athlete-Epreuve association not found' });
    } else {
      res.json(athleteEpreuve);
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Create a new athlete-epreuve association
router.post('/', async (req, res) => {
  try {
    const { epreuve_id, athlete_id } = req.body;
    const athleteEpreuve = await models.AthleteEpreuveModel.create({ epreuve_id, athlete_id });
    res.status(201).json(athleteEpreuve);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Update an athlete-epreuve association
router.put('/:id', async (req, res) => {
  try {
    const athleteEpreuve = await models.AthleteEpreuveModel.findByPk(req.params.id);
    if (!athleteEpreuve) {
      res.status(404).json({ message: 'Athlete-Epreuve association not found' });
    } else {
      const { epreuve_id, athlete_id } = req.body;
      await athleteEpreuve.update({ epreuve_id, athlete_id });
      res.json(athleteEpreuve);
    }
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Delete an athlete-epreuve association
router.delete('/:id', async (req, res) => {
  try {
    const athleteEpreuve = await models.AthleteEpreuveModel.findByPk(req.params.id);
    if (!athleteEpreuve) {
      res.status(404).json({ message: 'Athlete-Epreuve association not found' });
    } else {
      await athleteEpreuve.destroy();
      res.status(204).end();
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

export default router;
