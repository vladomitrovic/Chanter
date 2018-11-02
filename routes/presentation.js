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

    // models.Comity.findOne(
    //     {where:{id:2}},{
    //     include: [{
    //         model: models.Person}]}
    //
    //
    // ).then((personC2)=>
    //     {
    //         console.log(JSON.stringify(personC2));
    //         res.render('presentation/comite', {personC2: personC2 ,title: 'comite'});
    //     })

    models.Person.findAll({
        include: [{
                model: models.Comity,
                trough: { where: { ComityId: 2 }}}]
            }

    ).then((personnes) => {
        models.Person.findAll({
                 include: [{
                    model: models.Comity,
                    trough: {where:{ ComityId: 3 }}
                }]
            }
        ).then((persGroupements) => {
            console.log(JSON.stringify(personnes));
            console.log(JSON.stringify(persGroupements));
            res.render('presentation/comite', {
                personnes: personnes,
                persGroupements: persGroupements,
                title: 'comite'
            });
        })
    })

});

router.get('/commission', function(req, res, next) {

    models.Person.findAll({
        include: [{
            model: models.Comity,
            where: { comityName: 'Comission de la musique' }}],
        include: [{
            model: models.Function,
            }]}

    ).then((pers) => {
        console.log(pers);
        res.render('presentation/commission',{personnes:pers, title: 'commission' });

    })
});

router.get('/groupement', function(req, res, next) {


    models.Groupe.findAll(
    ).then((groups) => {
        console.log(JSON.stringify(groups));
        res.render('presentation/groupement', {groups: groups, title: 'groupements'});

    })



});

router.get('/honneur', function(req, res, next) {
    res.render('presentation/honneur',{ title: 'honneur'});
});

module.exports = router;
