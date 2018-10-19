'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('Articles', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      titleFR: {
        type: Sequelize.STRING
      },
      titleDE: {
        type: Sequelize.STRING
      },
      chapeauFR: {
        type: Sequelize.STRING
      },
      chapeauDE: {
        type: Sequelize.STRING
      },
      textFR: {
        type: Sequelize.TEXT
      },
      textDE: {
        type: Sequelize.TEXT
      },
      refPicture: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('Articles');
  }
};