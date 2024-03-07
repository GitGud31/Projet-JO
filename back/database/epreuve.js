import { DataTypes } from 'sequelize';

const Epreuve = (sequelize, DataTypes) => {
  const epreuve = sequelize.define("Epreuve", {
    sportId: DataTypes.INTEGER,
    libelle: DataTypes.STRING,
    date: DataTypes.DATE,
    lieu: DataTypes.STRING,
    idPremier: DataTypes.INTEGER,
    idDeuxieme: DataTypes.INTEGER,
    idTroisieme: DataTypes.INTEGER,
  });

  return epreuve;
};

export default Epreuve;
