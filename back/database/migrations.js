import db from "./index.js"
db.sequelize.sync({ force: false, alter: true }).then(function () {});