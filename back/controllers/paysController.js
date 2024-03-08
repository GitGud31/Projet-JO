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
  const transaction = await models.sequelize.transaction(); // Start a transaction

  try {
    const paysId = req.params.id;
    
    // Find all associated paysEpreuve records
    const paysEpreuveRecords = await models.PaysEpreuveModel.findAll({ where: { paysId: paysId } });
    console.log(paysEpreuveRecords)
    // Collect epreuve IDs from paysEpreuve records
    const epreuveIds = paysEpreuveRecords.map(record => record.epreuveId);
    console.log(epreuveIds)

    // Delete associated epreuve records
    await models.EpreuveModel.destroy({ where: { id: epreuveIds }, transaction });

    // Delete associated paysEpreuve records
    await models.PaysEpreuveModel.destroy({ where: { paysId: paysId }, transaction });

    // Delete related athletes
    await models.AthleteModel.destroy({ where: { paysId: paysId }, transaction });


    // Delete the country
    await models.PaysModel.destroy({ where: { id: paysId }, transaction });

    await transaction.commit(); // Commit transaction
    res.status(204).end();
  } catch (error) {
    await transaction.rollback(); // Rollback transaction if any error occurs
    res.status(500).json({ error: error.message });
  }
});

export default router;
