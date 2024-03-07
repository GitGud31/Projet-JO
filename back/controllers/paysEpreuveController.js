// paysEpreuveController.js
import express from 'express';
import models from './../database/index.js';

const router = express.Router();

// Get all pays-epreuve associations
router.get('/', async (req, res) => {
  try {
    const paysEpreuves = await models.PaysEpreuveModel.findAll();
    res.json(paysEpreuves);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Get pays-epreuve association by ID
router.get('/:id', async (req, res) => {
  try {
    const paysEpreuve = await models.PaysEpreuveModel.findByPk(req.params.id);
    if (!paysEpreuve) {
      res.status(404).json({ message: 'Pays-Epreuve association not found' });
    } else {
      res.json(paysEpreuve);
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Create a new pays-epreuve association
router.post('/', async (req, res) => {
  try {
    const { epreuve_id, pays_id } = req.body;
    const paysEpreuve = await models.PaysEpreuveModel.create({ epreuve_id, pays_id });
    res.status(201).json(paysEpreuve);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Update a pays-epreuve association
router.put('/:id', async (req, res) => {
  try {
    const paysEpreuve = await models.PaysEpreuveModel.findByPk(req.params.id);
    if (!paysEpreuve) {
      res.status(404).json({ message: 'Pays-Epreuve association not found' });
    } else {
      const { epreuve_id, pays_id } = req.body;
      await paysEpreuve.update({ epreuve_id, pays_id });
      res.json(paysEpreuve);
    }
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Delete a pays-epreuve association
router.delete('/:id', async (req, res) => {
  try {
    const paysEpreuve = await models.PaysEpreuveModel.findByPk(req.params.id);
    if (!paysEpreuve) {
      res.status(404).json({ message: 'Pays-Epreuve association not found' });
    } else {
      await paysEpreuve.destroy();
      res.status(204).end();
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

export default router;
