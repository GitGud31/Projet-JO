// Import necessary models or services
import Athlete from '../database/athlete.js';

// Define controller methods
const getAllAthletes = async (req, res) => {
  try {
    const athletes = await Athlete.findAll();
    res.status(200).json(athletes);
  } catch (error) {
    console.error('Error fetching athletes:', error);
    res.status(500).json({ message: 'Internal server error' });
  }
};

// Export controller methods
export { getAllAthletes };
