var express = require('express');
var router = express.Router();
var models = require('../models');
var Sequelize = require('sequelize');
const Op = Sequelize.Op;

/* GET home page. */
router.get('/', function(req, res, next) {
   models.Person.findAll(
        {where: {FunctionId: 1}},
        // include: [{
        // model: models.Function,
        // where: { functionName: 'President' }

    ).then((president) => {
           models.Person.findAll
           (
               {where: {FunctionId: 2}},
               // {
               // include: [{
               //     model: models.Function,
               //     where: { functionName: 'Director' }
               //          }]
               // }
           ).then((chefChoeur)=>
               {
                console.log(chefChoeur);
                console.log(president);
                res.render('choeurs/index', {presidents:president, chefChoeur:chefChoeur, title:'titleChoose'});
               })})
   });

// SEARCH CHOIR TO DO
router.post('/', function(req, res, next) {
    console.log("searhc result");
    var memberfc = req.body.memberfc;
    console.log(memberfc);
    if (memberfc == "null")
    {
        memberfc = [0,1, null];
    }
    else
    {
        memberfc = [parseInt(memberfc)];
    }
    models.Choir.findAll(
        {where: {memberfc: {[Op.or]:memberfc}},
        include: [{// Notice `include` takes an ARRAY
                    model: models.Locality}]}

        ).then((choeurs) => {
        console.log(JSON.stringify(choeurs));
        res.render('choeurs/choirList', {choeurs: choeurs, title: 'listedecoeurs'}) ;
})
});


router.get('/calendrier', function(req, res, next) {

    models.Event.findAll().then((events) => {
        models.Groupe.findAll().then((groupes) => {
            res.render('choeurs/calendrier', {
                title: 'calendrier',
                events: encodeURIComponent(JSON.stringify(events)),
                groupes: groupes
            },);
        });
        });
});

module.exports = router;
