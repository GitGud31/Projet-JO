import fs from 'fs';
import path, { dirname } from 'path';
import { Sequelize, DataTypes } from 'sequelize';
import { URL } from 'url';

const __filename = new URL('', import.meta.url).pathname;
let __dirname = new URL('.', import.meta.url).pathname;
__dirname = __dirname.replace(/^\/[A-Za-z]:/,'').replace(/\//g, '\\'); // Remove any leading slash and convert forward slashes to backward slashes

const db = {};
const sequelize = new Sequelize(process.env.DATABASE_NAME, process.env.DATABASE_USERNAME, process.env.DATABASE_PASSWORD, {
  host: process.env.DATABASE_HOST,
  dialect: 'mysql',
});

// Read the files in the current directory
const files = fs.readdirSync(__dirname);
// Loop through the files and import models
for (const file of files) {
  if (file !== 'index.js') { // Exclude index.js from processing
    const model = await import(path.join(__dirname, file));
    db[model.default.name] = model.default(sequelize, DataTypes);
  }
}

// Associate the models if necessary
for (const modelName of Object.keys(db)) {
  if (db[modelName].associate) {
    db[modelName].associate(db);
  }
}

// Add sequelize and Sequelize to the db object
db.sequelize = sequelize;
db.Sequelize = Sequelize;

// Export the db object
export default db;
