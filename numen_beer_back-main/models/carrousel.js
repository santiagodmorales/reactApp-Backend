'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class carrousel extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  carrousel.init({
    title: DataTypes.STRING,
    image: DataTypes.STRING,
    phrase: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'carrousel',
  });
  return carrousel;
};