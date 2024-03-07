import { DataTypes } from 'sequelize';

const AthleteEpreuve = (sequelize, DataTypes) => {
  const athleteEpreuve = sequelize.define("athleteEpreuve", {
    epreuveId: DataTypes.INTEGER,
    athleteId: DataTypes.INTEGER,
  });

  athleteEpreuve.associate = (models) => {
    athleteEpreuve.belongsTo(models.EpreuveAthlete, { foreignKey: "epreuveId", as: "epreuve" });
    athleteEpreuve.belongsTo(models.Athlete, { foreignKey: "athleteId", as: "athlete" });
  };

  return athleteEpreuve;
};

export default AthleteEpreuve;
