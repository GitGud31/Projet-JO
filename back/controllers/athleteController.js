// athleteController.js
import express from 'express';
import models from './../database/index.js';

const router = express.Router();

// Get all athletes
router.get('/', async (req, res) => {
  try {
    const athletes = await models.AthleteModel.findAll();
    res.json(athletes);
  } catch (error) {
    console.log(error)
    res.status(500).json({ error: error.message });
  }
});

// Get athlete by ID
router.get('/:id', async (req, res) => {
  try {
    const athlete = await models.AthleteModel.findByPk(req.params.id);
    if (!athlete) {
      res.status(404).json({ message: 'Athlete not found' });
    } else {
      res.json(athlete);
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Create a new athlete
router.post('/', async (req, res) => {
  try {
    const { nom, prenom, pays_id } = req.body;
    const athlete = await models.AthleteModel.create({ nom, prenom, pays_id });
    res.status(201).json(athlete);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Update an athlete
router.put('/:id', async (req, res) => {
  try {
    const athlete = await models.AthleteModel.findByPk(req.params.id);
    if (!athlete) {
      res.status(404).json({ message: 'Athlete not found' });
    } else {
      const { nom, prenom, pays_id } = req.body;
      await athlete.update({ nom, prenom, pays_id });
      res.json(athlete);
    }
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Delete an athlete
router.delete('/:id', async (req, res) => {
  try {
    const athlete = await models.AthleteModel.findByPk(req.params.id);
    if (!athlete) {
      res.status(404).json({ message: 'Athlete not found' });
    } else {
      await athlete.destroy();
      res.status(204).end();
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

export default router;
