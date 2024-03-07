import { DataTypes } from 'sequelize';

const PaysEpreuve = (sequelize, DataTypes) => {
  const paysEpreuve = sequelize.define("paysEpreuve", {
    epreuveId: DataTypes.INTEGER,
    paysId: DataTypes.INTEGER,
  });

  paysEpreuve.associate = (models) => {
    paysEpreuve.belongsTo(models.Epreuve, { foreignKey: "epreuveId", as: "epreuve" });
    paysEpreuve.belongsTo(models.Pays, { foreignKey: "paysId", as: "pays" });
  };

  return paysEpreuve;
};

export default PaysEpreuve;
