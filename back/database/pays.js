import { DataTypes } from 'sequelize';

const Pays = (sequelize, DataTypes) => {
  const pays = sequelize.define("pays", {
    libelle: DataTypes.STRING,
  });

  return pays;
};

export default Pays;
