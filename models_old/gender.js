const Gender = sequelize.define('gender', {
    genderName: {
        type: Sequelize.STRING
    },
});
Gender.hasMany(models.person);
