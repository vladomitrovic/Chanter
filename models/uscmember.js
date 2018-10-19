'use strict';
const bcrypt = require('bcrypt');
const saltRounds = 10;
module.exports = (sequelize, DataTypes) => {
  const Uscmember = sequelize.define('Uscmember', {
    password_hash: DataTypes.STRING,
    password:  {
        type: DataTypes.VIRTUAL,
        set: function(val) {
            // Remember to set the data value, otherwise it won't be validated
            this.setDataValue('password', val);
            this.setDataValue('password_hash', bcrypt.hashSync(val, saltRounds));
        },
        validate: {
            isLongEnough: (val) => {
                if (val.length < 7) {
                    throw new Error("Please choose a longer password")
                }
            }
        }
    },
    dateEntry: DataTypes.DATEONLY
  }, {});
  Uscmember.associate = function(models) {
    // associations can be defined here
      Uscmember.hasOne(models.Choir);
  };
  return Uscmember;
};