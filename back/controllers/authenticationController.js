// authController.js
import jwt from 'jsonwebtoken';
import bcrypt from 'bcryptjs';
import models from './../database/index.js'; // Import your models

const secretKey = 'your_secret_key'; // Secret key for JWT

const login = async (req, res) => {
  const { username, password } = req.body;

  try {
    // Find user in database
    const admin = await models.AdminModel.findOne({ where: { username } });
    if (!admin) {
      return res.status(401).json({ message: 'Invalid username or password' });
    }

    // Check password
    const isPasswordValid = await bcrypt.compare(password, admin.password);
    if (!isPasswordValid) {
      return res.status(401).json({ message: 'Invalid username or password' });
    }

    // Generate JWT token
    const token = jwt.sign({ username: admin.username }, secretKey, { expiresIn: '1h' });

    res.json({ token });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

const authenticateToken = (req, res, next) => {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];

  if (!token) {
    return res.status(401).json({ message: 'Token not provided' });
  }

  jwt.verify(token, secretKey, async (err, payload) => {
    if (err) {
      return res.status(403).json({ message: 'Invalid token' });
    }

    // Fetch user from database using the decoded token
    try {
      const admin = await models.AdminModel.findOne({ where: { username: payload.username } });
      if (!admin) {
        return res.status(401).json({ message: 'User not found' });
      }
      req.user = admin;
      next();
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Internal server error' });
    }
  });
};


const addUser = async (req, res) => {
    const { username, password } = req.body;
  
    try {
      // Check if user already exists
      const existingUser = await models.AdminModel.findOne({ where: { username } });
      if (existingUser) {
        return res.status(400).json({ message: 'User already exists' });
      }
  
      // Hash password
      const hashedPassword = await bcrypt.hash(password, 10);
  
      // Create user in database
      const newUser = await models.AdminModel.create({ username, password: hashedPassword });
  
      res.status(201).json({ message: 'User created successfully', user: newUser });
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Internal server error' });
    }
  };

export default {
  login,
  authenticateToken,
  addUser
};
