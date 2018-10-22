var express = require('express');
var router = express.Router();
var models = require('../models');
var Sequelize = require('sequelize');
const Op = Sequelize.Op;

/* GET home page. */
router.get('/', function(req, res, next) {
    //To implement -> get list the director avalaible
    var president = ["dir1", "dir2", "dir3"];
    var chefchoeur = ["chef1", "chef2", "chef3"];
    res.render('choeurs/index', {president:president, chefchoeur:chefchoeur, title:'titleChoose'});
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
    });
});


router.get('/calendrier', function(req, res, next) {

    res.render('choeurs/calendrier', { title: 'calendrier'});
});



module.exports = router;
