import express from 'express';
import bodyParser from 'body-parser';
import athleteRoute from './routes/athleteRoutes.js';

const app = express();

// Middleware
app.use(bodyParser.json());

// Routes
app.use('/api', athleteRoute);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
