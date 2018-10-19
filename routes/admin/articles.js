var express = require('express');
var router = express.Router();
var models = require('../../models');
var i18n = require ('i18n-express');

/* GET home page. */
router.get('/', function(req, res, next) {

});


// New article from
router.get('/new', function(req, res, next) {

    models.Category.findAll().then((categories) => {

            res.render('admin/newArticle', {category:categories,  title: 'Ajouter un article',  layout:'admin/adminLayout'});

    });
});

// Add the article || TO IMPLEMENT !!!
router.post('/add', function(req, res, next) {

    models.Article.create({
        titleFR: req.body.title,
        chapeauFR: req.body.chapeau,
        textFR: req.body.text,
        refPicture: req.body.myFile,
        CategoryId: req.body.categorie.id
    }).then(() => {
        res.redirect('/new');
    })

});


module.exports = router;