import { Sequelize } from 'sequelize';
import dotenv from 'dotenv';
import Admin from './admin.js';
import Athlete from './athlete.js';
import AthleteEpreuve from './athleteEpreuve.js';
import Epreuve from './epreuve.js';
import Pays from './pays.js';
import PaysEpreuve from './paysEpreuve.js';
import Sport from './sport.js';

dotenv.config();

const sequelize = new Sequelize(process.env.DATABASE_NAME, process.env.DATABASE_USERNAME, process.env.DATABASE_PASSWORD, {
  host: process.env.DATABASE_HOST,
  dialect: 'mysql',
});

const AdminModel = Admin(sequelize, Sequelize);
const AthleteModel = Athlete(sequelize, Sequelize);
const AthleteEpreuveModel = AthleteEpreuve(sequelize, Sequelize);
const EpreuveModel = Epreuve(sequelize, Sequelize);
const PaysModel = Pays(sequelize, Sequelize);
const PaysEpreuveModel = PaysEpreuve(sequelize, Sequelize);
const SportModel = Sport(sequelize, Sequelize);


const models = {
  AdminModel,
  AthleteModel,
  AthleteEpreuveModel,
  EpreuveModel,
  PaysModel,
  PaysEpreuveModel,
  SportModel,
  sequelize,
};

export default models;
