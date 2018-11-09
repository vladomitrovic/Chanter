var express = require('express');
var router = express.Router();
var models = require('../models');
var Sequelize = require('sequelize');
const Op = Sequelize.Op;

/* GET home page. */
router.get('/', function(req, res, next) {
    models.Person.findAll(
        {where: {FunctionId: 1}},

    ).then((president) => {
        models.Person.findAll
        (
            {where: {FunctionId: 2}},

        ).then((chefChoeur)=>
        {
            res.render('choeurs/index', {presidents:president, chefChoeur:chefChoeur, title:'titleChoose'});
        })})
});

// SEARCH CHOIR TO DO
router.post('/', function(req, res, next) {
    var search = {};
    if (req.body.memberfc !== "all") {search.memberfc = parseInt(req.body.memberfc);}
    if (req.body.region !== "all") {}
    if (req.body.groupe !== "all") {search.GroupeId = parseInt(req.body.groupe);}
    if (req.body.typechoeur !== "all") {search.ChoirTypeId = parseInt(req.body.typechoeur);}
    if (req.body.president !== "all") {}
    if (req.body.director !== "all") {}
    models.Choir.findAll(
        {where: search/*{memberfc: {[Op.or]:memberfc}}*/,
            include: [{// Notice `include` takes an ARRAY
                model: models.Locality}]}

    ).then((choeurs) => {
        res.render('choeurs/choirList', {choeurs: choeurs, title: 'listedecoeurs'}) ;
    })
});


router.get('/calendrier', function(req, res, next) {

    models.Event.findAll().then((events) => {
        var lang = req.i18n_lang;
        models.Groupe.findAll().then((groupes) => {
            res.render('choeurs/calendrier', {
                title: 'calendrier',
                events: encodeURIComponent(JSON.stringify(events)),
                groupes: encodeURIComponent(JSON.stringify(groupes)),
                lang : lang
            },);
        });
    });
});

router.get('/calendrier/:id', function(req, res, next) {

    models.Event.findOne({
        where : {id:  req.params.id},
        include: [{
            model: models.Groupe}]
    }).then((event) => {
        res.render('choeurs/calendarDetail', {event: event, title: 'detailEvent'}) ;
    });
});

router.get('/:id', function(req, res, next) {

    models.Choir.findOne(
        {where: {id: req.params.id},
            include: [{ all: true}]}
    ).then((choir) => {
        models.Person.findAll(
            {include: [{
                    model: models.Choir,
                    where: { id: choir.id}},
                    {
                        model: models.Function,
                        where: { [Op.or]: [{id: 1}, {id: 2}]}}
                ]}
        ).then((people) => {

            res.render('choeurs/details', {
                title: 'details',
                choir: choir,
                director :people.find(o => o.Function.functionName == 'Director'),
                president : people.find(o => o.Function.functionName == 'President')
            });
        });
    });
});

module.exports = router;
