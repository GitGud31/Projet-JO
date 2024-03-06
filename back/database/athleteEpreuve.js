import { DataTypes } from 'sequelize';

const AthleteEpreuve = (sequelize, DataTypes) => {
  const athleteEpreuve = sequelize.define("athleteEpreuve", {
    epreuve_id: DataTypes.INTEGER,
    athlete_id: DataTypes.INTEGER,
  });

  athleteEpreuve.associate = (models) => {
    athleteEpreuve.belongsTo(models.EpreuveAthlete, { foreignKey: "epreuve_id", as: "epreuve" });
    athleteEpreuve.belongsTo(models.Athlete, { foreignKey: "athlete_id", as: "athlete" });
  };

  return athleteEpreuve;
};

export default AthleteEpreuve;
