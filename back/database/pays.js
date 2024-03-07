import { DataTypes } from 'sequelize';

const Pays = (sequelize, DataTypes) => {
  const pays = sequelize.define("pays", {
    libelle: DataTypes.STRING,
    flag: DataTypes.STRING
  });

  return pays;
};

export default Pays;
