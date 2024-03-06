
module.exports = (sequelize, DataTypes) => {
  const athleteEpreuve = sequelize.define("athleteEpreuve", {
    epreuve_id: DataTypes.INTEGER,
    athlete_id: DataTypes.INTEGER,
  });

  athleteEpreuve.associate = (models) => {
    athleteEpreuve.belongsTo(models.epreuveAthletes, { foreignKey: "epreuve_id", as: "epreuve" });
    athleteEpreuve.belongsTo(models.athlete, { foreignKey: "athlete_id", as: "athlete" });

  }

  return athleteEpreuve;
};
