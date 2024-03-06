import { DataTypes } from 'sequelize';

const PaysEpreuve = (sequelize, DataTypes) => {
  const paysEpreuve = sequelize.define("paysEpreuve", {
    epreuve_id: DataTypes.INTEGER,
    pays_id: DataTypes.INTEGER,
  });

  paysEpreuve.associate = (models) => {
    paysEpreuve.belongsTo(models.Epreuve, { foreignKey: "epreuve_id", as: "epreuve" });
    paysEpreuve.belongsTo(models.Pays, { foreignKey: "pays_id", as: "pays" });
  };

  return paysEpreuve;
};

export default PaysEpreuve;
