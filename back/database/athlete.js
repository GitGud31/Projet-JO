import { DataTypes } from 'sequelize';

const Athlete = (sequelize, DataTypes) => {
  const athlete = sequelize.define("athlete", {
    nom: DataTypes.STRING,
    prenom: DataTypes.STRING,
    pays_id: DataTypes.INTEGER,
  });

  athlete.associate = (models) => {
    athlete.belongsTo(models.sport, { foreignKey: "pays_id", as: "pays" });
  };

  return athlete;
};

export default Athlete;
