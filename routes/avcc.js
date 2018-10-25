var express = require('express');
var router = express.Router();
var models = require('../models');
var Sequelize = require('sequelize');

/* GET home page. */
router.get('/', function(req, res, next) {

    var lang = req.i18n_lang;

    models.Article.findOne(
        {where: {titleFR: 'Présentation AVCC'}},

    ).then((presentation)=>
    {
        console.log(presentation)
        res.render('avcc/presentationavcc', { presentation:presentation, bool:lang==='fr', title: 'presentationavcc' });
    })
});

router.get('/historique', function(req, res, next) {

    models.Article.findOne(
        {where: {titleFR: 'Historique AVCC'}},

    ).then((historique)=>
    {
        console.log(historique)
        res.render('avcc/historique',{historique:historique, bool:lang==='fr', title: 'historiqueavcc' });
    })

});

router.get('/comite', function (req, res, next) {
    res.render('avcc/comite', {title: 'comiteavcc'});

});

router.get('/fonds', function (req, res, next) {
    res.render('avcc/fonds', {title: 'fondsavcc'});
});

router.get('/formation', function (req, res, next) {
    res.render('avcc/formation', {title: 'formationavcc'});
});


router.get('/pavcc', function (req, res, next) {
    res.render('avcc/presentationavcc', {title: 'presentationavcc'});
});
module.exports = router;