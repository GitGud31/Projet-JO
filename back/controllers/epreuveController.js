// epreuveController.js
import express from 'express';
import models from './../database/index.js';

const router = express.Router();

// Get all epreuves
router.get('/', async (req, res) => {
  try {
    const epreuves = await models.EpreuveModel.findAll();
    res.json(epreuves);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Get epreuve by ID
router.get('/:id', async (req, res) => {
  try {
    const epreuve = await models.EpreuveModel.findByPk(req.params.id);
    if (!epreuve) {
      res.status(404).json({ message: 'Epreuve not found' });
    } else {
      res.json(epreuve);
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Create a new epreuve
router.post('/', async (req, res) => {
  try {
    const { sport_id, libelle, date, lieu, idPremier, idDeuxieme, idTroisieme } = req.body;
    const epreuve = await models.EpreuveModel.create({ sport_id, libelle, date, lieu, idPremier, idDeuxieme, idTroisieme });
    res.status(201).json(epreuve);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Update an epreuve
router.put('/:id', async (req, res) => {
  try {
    const epreuve = await models.EpreuveModel.findByPk(req.params.id);
    if (!epreuve) {
      res.status(404).json({ message: 'Epreuve not found' });
    } else {
      const { sport_id, libelle, date, lieu, idPremier, idDeuxieme, idTroisieme } = req.body;
      await epreuve.update({ sport_id, libelle, date, lieu, idPremier, idDeuxieme, idTroisieme });
      res.json(epreuve);
    }
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// Delete an epreuve
router.delete('/:id', async (req, res) => {
  try {
    const epreuve = await models.EpreuveModel.findByPk(req.params.id);
    if (!epreuve) {
      res.status(404).json({ message: 'Epreuve not found' });
    } else {
      await epreuve.destroy();
      res.status(204).end();
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

export default router;
