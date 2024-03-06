import { DataTypes } from 'sequelize';

const Admin = (sequelize, DataTypes) => {
  const admin = sequelize.define("admin", {
    username: DataTypes.STRING,
    password: DataTypes.STRING,
  });

  return admin;
};

export default Admin;
