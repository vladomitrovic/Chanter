var express = require('express');
var router = express.Router();
var models = require('../models');
var Sequelize = require('sequelize');
const Op = Sequelize.Op;

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('service/index', { title: '' });
});

router.get('/annonces', function(req, res, next) {
    res.render('service/petites', { title: 'annonces' });
});

router.get('/forumpres', function (req, res, next) {
    res.render('service/forumpres', {title: 'forum'});

});

router.get('/ascj', function (req, res, next) {
    res.render('service/ascj', {title: 'soutien'});
});

router.get('/newsletter', function (req, res, next) {
    res.render('service/newsletter', {title: 'newsletter'});
});


router.get('/servicedep', function (req, res, next) {
    res.render('service/servicedep', {title: 'servicedep'});
});

router.get('/contacts', function (req, res, next) {

    models.Category.findAll(
        {where:{[Op.or]:
                    [{categoryFR: 'Demande'}, {categoryDE:'Frage'}, {categoryFR: 'Réclamation'}, {categoryDE:'Reklamation'}]}
        }

    ).then((categories) => {
        res.render('service/contacts', {category:categories ,title: 'contact'});
    });
});


router.post('/contacts', function (req, res, next) {
    console.log(req.body.name);
    console.log(JSON.stringify(req.body));
    models.Category.findOne(
    {where:{[Op.or]: [{categoryFR: req.body.categorie}, {categoryDE: req.body.categorie}]}

    }).then((category) => {
        console.log(JSON.stringify(category));
        var categoryId = category.id;
        console.log(categoryId);
        models.Ticket.create({
            nom: req.body.name,
            email: req.body.email,
            sujet: req.body.sujet,
            message: req.body.message,
            CategoryId: categoryId,
            statut: "toAnswer"

        }).then(() => {
            console.log("ok create");
            res.send(200)
        });
    });
    });

    module.exports = router;