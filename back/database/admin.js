
module.exports = (sequelize, DataTypes) => {
  const admin = sequelize.define("admin", {
    username: DataTypes.STRING,
    password: DataTypes.STRING,
  });

  return admin;
};
