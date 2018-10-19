'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('Choirs', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      choirName: {
        type: Sequelize.STRING
      },
      address1: {
        type: Sequelize.STRING
      },
      address2: {
        type: Sequelize.STRING
      },
      website: {
        type: Sequelize.STRING
      },
      otherType: {
        type: Sequelize.STRING
      },
      yearOfCreation: {
        type: Sequelize.DATEONLY
      },
      chEglise: {
        type: Sequelize.BOOLEAN
      },
      chGospel: {
        type: Sequelize.BOOLEAN
      },
      memberfc: {
        type: Sequelize.BOOLEAN
      },
      entryfc: {
        type: Sequelize.DATEONLY
      },
      entryGroup: {
        type: Sequelize.DATEONLY
      },
      remarks: {
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
    return queryInterface.dropTable('Choirs');
  }
};