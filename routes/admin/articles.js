var express = require('express');
var router = express.Router();
var models = require('../../models');
var i18n = require ('i18n-express');
var Sequelize = require('Sequelize');
const Op = Sequelize.Op;

/* GET home page. */
router.get('/', function(req, res, next) {

});


// List articles
router.get('/list', function(req, res, next) {
    models.Article.findAll().then((articles) => {
        res.render('admin/listArticles', {articles:articles, user: req.session.user, layout:'admin/adminLayout'});
    });
});


// New article from
router.get('/new', function(req, res, next) {
    models.Category.findAll().then((categories) => {
            res.render('admin/newArticle', {category:categories , user: req.session.user, layout:'admin/adminLayout', action:'add'});
    });
});

router.get('/modify/:id', function(req, res, next) {

    models.Article.findOne({
        where : {id:  req.params.id}
    }).then((article) => {
         models.Category.findAll().then((categories) => {
                res.render('admin/newArticle', {category:categories , user: req.session.user, layout:'admin/adminLayout',article: article , action:'modify'});
        });
    });
});


router.get('/delete/:id',  (req, res) => {
    models.Article.destroy({
        where : {id:  req.params.id}
    }).then(() => {
        res.redirect('/admin/articles/list')
    });
});

// Add the article
router.post('/add', function(req, res, next) {
    models.Category.findOne({
        where: {
            [Op.or]: [{categoryFR: req.body.categorie}, {categoryDE: req.body.categorie}]
        }
    }).then((category) => {
        var categoryId = category.id;
        var user = req.session.user;

        models.Article.create({
            titleFR: req.body.titleFR,
            chapeauFR: req.body.chapeauFR,
            textFR: req.body.textFR,
            titleDE: req.body.titleDE,
            chapeauDE: req.body.chapeauDE,
            textDE: req.body.textDE,
            refPicture: req.body.myFile,
            PersonId :user.id,
            CategoryId: categoryId
        }).then(() => {
            res.redirect('./new');
        })
    }).catch(console.error);
});

router.post('/modify', function(req, res, next) {
    models.Category.findOne({
        where: {
            [Op.or]: [{categoryFR: req.body.categorie}, {categoryDE: req.body.categorie}]
        }
    }).then((category) => {
        var categoryId = category.id;
        var user = req.session.user;


        models.Article.create({
            titleFR: req.body.titleFR,
            chapeauFR: req.body.chapeauFR,
            textFR: req.body.textFR,
            titleDE: req.body.titleDE,
            chapeauDE: req.body.chapeauDE,
            textDE: req.body.textDE,
            refPicture: req.body.myFile,
            PersonId :user.id,
            CategoryId: categoryId
        }).then(() => {
            res.redirect('./new');
        })
    }).catch(console.error);
});



module.exports = router;