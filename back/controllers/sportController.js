// sportController.js
import express from 'express';
import models from './../database/index.js';

const router = express.Router();

// Get all sports
router.get('/', async (req, res) => {
  try {
    const sports = await models.SportModel.findAll();
    res.json(sports);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Get sport by ID
router.get('/:id', async (req, res) => {
  try {
    const sport = await models.SportModel.findByPk(req.params.id);
    if (!sport) {
      res.status(404).json({ message: 'Sport not found' });
    } else {
      res.json(sport);
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Create a new sport
router.post('/', async (req, res) => {
  try {
    const { libelle } = req.body;
    const sport = await models.SportModel.create({ libelle });
    res.status(201).json(sport);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Update a sport
router.put('/:id', async (req, res) => {
  try {
    const sport = await models.SportModel.findByPk(req.params.id);
    if (!sport) {
      res.status(404).json({ message: 'Sport not found' });
    } else {
      const { libelle } = req.body;
      await sport.update({ libelle });
      res.json(sport);
    }
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Delete a sport
router.delete('/:id', async (req, res) => {
  try {
    const sport = await models.SportModel.findByPk(req.params.id);
    if (!sport) {
      res.status(404).json({ message: 'Sport not found' });
    } else {
      await sport.destroy();
      res.status(204).end();
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

export default router;
