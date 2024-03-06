
module.exports = (sequelize, DataTypes) => {
  const paysEpreuve = sequelize.define("paysEpreuve", {
    epreuve_id: DataTypes.INTEGER,
    pays_id: DataTypes.INTEGER,
  });

  paysEpreuve.associate = (models) => {
    paysEpreuve.belongsTo(models.epreuve, { foreignKey: "epreuve_id", as: "epreuve" });
    paysEpreuve.belongsTo(models.pays, { foreignKey: "pays_id", as: "pays" });

  }

  return paysEpreuve;
};
