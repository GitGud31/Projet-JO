
module.exports = (sequelize, DataTypes) => {
  const athlete = sequelize.define("athlete", {
    nom: DataTypes.STRING,
    prenom: DataTypes.STRING,
    pays_id: DataTypes.INTEGER,
  });

  EpreuveAthletes.associate = (models) => {
    EpreuveAthletes.belongsTo(models.sport, { foreignKey: "pays_id", as: "pays" });
  }

  return athlete;
};
