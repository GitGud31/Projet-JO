// myRoute.js

import express from 'express';
const router = express.Router();
import { getHelloWorld, getTest } from '../controllers/myController.js';

// Define route to handle GET request to '/'
router.get('/', getHelloWorld);
router.get('/test',getTest);

export default router;
