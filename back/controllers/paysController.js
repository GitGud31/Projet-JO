// paysController.js
import express from 'express';
import models from './../database/index.js';

const router = express.Router();

// Get all countries
router.get('/', async (req, res) => {
  try {
    const countries = await models.PaysModel.findAll();
    res.json(countries);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Get country by ID
router.get('/:id', async (req, res) => {
  try {
    const country = await models.PaysModel.findByPk(req.params.id);
    if (!country) {
      res.status(404).json({ message: 'Country not found' });
    } else {
      res.json(country);
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Create a new country
router.post('/', async (req, res) => {
  try {
    const { libelle } = req.body;
    const country = await models.PaysModel.create({ libelle });
    res.status(201).json(country);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Update a country
router.put('/:id', async (req, res) => {
  try {
    const country = await models.PaysModel.findByPk(req.params.id);
    if (!country) {
      res.status(404).json({ message: 'Country not found' });
    } else {
      const { libelle } = req.body;
      await country.update({ libelle });
      res.json(country);
    }
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Delete a country
router.delete('/:id', async (req, res) => {
  try {
    const country = await models.PaysModel.findByPk(req.params.id);
    if (!country) {
      res.status(404).json({ message: 'Country not found' });
    } else {
      await country.destroy();
      res.status(204).end();
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

export default router;
