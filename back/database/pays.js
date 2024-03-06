
module.exports = (sequelize, DataTypes) => {
  const pays = sequelize.define("pays", {
    libelle: DataTypes.STRING,
  });

  return pays;
};
