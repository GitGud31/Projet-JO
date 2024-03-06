
module.exports = (sequelize, DataTypes) => {
  const sport = sequelize.define("sport", {
    libelle: DataTypes.STRING,
  });

  return sport;
};
