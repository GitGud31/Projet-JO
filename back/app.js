// app.js

import express from 'express';
import dotenv from 'dotenv';
import myRoute from './routes/myRoute.js';

// Load environment variables from .env file
dotenv.config();

// Create an Express application
const app = express();

// Middleware to parse JSON bodies
app.use(express.json());

// Use the defined route
app.use('/', myRoute);

// Define a default route
app.get('/', (req, res) => {
    res.send('Welcome to my Express application!');
});

// Define the port
const port = process.env.PORT || 3000;

// Start the server
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
