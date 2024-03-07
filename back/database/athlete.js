import { DataTypes } from 'sequelize';

const Athlete = (sequelize, DataTypes) => {
  const Athlete = sequelize.define("athlete", {
    nom: DataTypes.STRING,
    prenom: DataTypes.STRING,
    paysId: DataTypes.INTEGER,
  });

  Athlete.associate = (models) => {
    Athlete.belongsTo(models.sport, { foreignKey: "paysId", as: "pays" });
  };

  // Custom functions
  Athlete.findByCountry = async (countryId) => {
    try {
      const athletes = await Athlete.findAll({
        where: {
          pays_id: countryId
        }
      });
      return athletes;
    } catch (error) {
      throw new Error(error.message);
    }
  };

  Athlete.updateAthletes = async (athleteIds, updates) => {
    try {
      const affectedRows = await Athlete.update(updates, {
        where: {
          id: athleteIds
        }
      });
      return affectedRows;
    } catch (error) {
      throw new Error(error.message);
    }
  };

  Athlete.deleteAthletes = async (athleteIds) => {
    try {
      const affectedRows = await Athlete.destroy({
        where: {
          id: athleteIds
        }
      });
      return affectedRows;
    } catch (error) {
      throw new Error(error.message);
    }
  };

  return Athlete;
};

export default Athlete;
