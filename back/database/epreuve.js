
module.exports = (sequelize, DataTypes) => {
  const Epreuve = sequelize.define("Epreuve", {
    sport_id: DataTypes.INTEGER,
    libelle: DataTypes.STRING,
    date:DataTypes.DATE,
    lieu: DataTypes.STRING,
    idPremier: DataTypes.INTEGER,
    idDeuxieme: DataTypes.INTEGER,
    idTroisieme: DataTypes.INTEGER,
  });

  return Epreuve;
};
