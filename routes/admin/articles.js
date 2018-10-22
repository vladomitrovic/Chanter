var express = require('express');
var router = express.Router();
var models = require('../../models');
var i18n = require ('i18n-express');
var Sequelize = require('Sequelize');
const Op = Sequelize.Op;

/* GET home page. */
router.get('/', function(req, res, next) {

});


// New article from
router.get('/new', function(req, res, next) {

    models.Category.findAll().then((categories) => {

            res.render('admin/newArticle', {category:categories , user: req.session.user,  title: 'Ajouter un article',  layout:'admin/adminLayout'});

    });
});

// Add the article || TO IMPLEMENT !!!
router.post('/add', function(req, res, next) {



    models.Category.findOne({
        where: {
            [Op.or]: [{categoryFR: req.body.categorie}, {categoryDE: req.body.categorie}]
        }
    }).then((category) => {
        var categoryId = category.id;
        var user = req.session.user;


        models.Article.create({
            titleFR: req.body.title,
            chapeauFR: req.body.chapeau,
            textFR: req.body.text,
            refPicture: req.body.myFile,
            PersonId :user.id,
            CategoryId: categoryId
        }).then(() => {
            res.redirect('./new');
        })

    }).catch(console.error);




});


module.exports = router;