var express = require('express');
var router = express.Router();
var models = require('../models');
var Sequelize = require('sequelize');

/* GET home page. */
router.get('/', function(req, res, next) {

    var lang = req.i18n_lang;
    models.Article.findOne(
        {where: {titleFR: 'Présentation'}},

    ).then((presentation)=>
    {
        console.log(presentation)
        res.render('presentation/index', { presentation:presentation, bool:lang==='fr', title: 'presentation' });
    })

});

router.get('/comite', function(req, res, next) {

    models.Person.findAll({
        include: [{
            model: models.Comity,
            where: { comityName: 'Comite FCVS' }}]}

    ).then((personnes) => {
        console.log(personnes);
        res.render('presentation/comite', {personnes:personnes, title:'comite'});

        })

});

router.get('/commission', function(req, res, next) {
    res.render('presentation/commission',{ title: 'commission' });
});

router.get('/groupement', function(req, res, next) {
    res.render('presentation/groupement',{ title: 'groupements'});
});

router.get('/honneur', function(req, res, next) {
    res.render('presentation/honneur',{ title: 'honneur'});
});

module.exports = router;
