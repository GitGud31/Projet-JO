import express from "express";
import bodyParser from "body-parser";
import athleteRoute from "./routes/athleteRoutes.js";
import epreuveRoute from "./routes/epreuveRoutes.js";
import paysRoute from "./routes/paysRoutes.js";
import sportRoute from "./routes/sportRoutes.js";
import athleteEpreuve from "./routes/athleteEpreuveRoute.js"
import paysEpreuve from "./routes/paysEpreuveRoute.js"
import auth from "./routes/authRoutes.js"

import cors from 'cors';

const app = express();

app.use(cors());

// Middleware
app.use(bodyParser.json());

// Routes
app.use("/api", athleteRoute);
app.use("/api", epreuveRoute);
app.use("/api", paysRoute);
app.use("/api", sportRoute);
app.use("/api",athleteEpreuve);
app.use("/api",paysEpreuve);
app.use("/api",auth);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send("Something broke!");
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
