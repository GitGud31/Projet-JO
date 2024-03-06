import { DataTypes } from 'sequelize';

const Sport = (sequelize, DataTypes) => {
  const sport = sequelize.define("sport", {
    libelle: DataTypes.STRING,
  });

  return sport;
};

export default Sport;
