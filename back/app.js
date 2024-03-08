import express from "express";
import bodyParser from "body-parser";
import athleteRoute from "./routes/athleteRoutes.js";
import epreuveRoute from "./routes/epreuveRoutes.js";
import paysRoute from "./routes/paysRoutes.js";
import sportRoute from "./routes/sportRoutes.js";
import athleteEpreuve from "./routes/athleteEpreuveRoute.js"
import paysEpreuve from "./routes/paysEpreuveRoute.js"
import auth from "./routes/authRoutes.js"
import coockieParser from 'cookie-parser'
import cors from 'cors';
import verify_token from "./middlewares/authMiddleware.js";

const app = express();

app.use(cors());
app.use(coockieParser());




// Middleware
app.use(bodyParser.json());

// Routes
app.use("/api",auth);
app.use("/api",verify_token, athleteRoute);
app.use("/api",verify_token, epreuveRoute);
app.use("/api",verify_token, paysRoute);
app.use("/api",verify_token, sportRoute);
app.use("/api",verify_token,athleteEpreuve);
app.use("/api",verify_token,paysEpreuve);

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


