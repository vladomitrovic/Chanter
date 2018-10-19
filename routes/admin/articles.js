var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {

});


// New article from
router.get('/new', function(req, res, next) {

    //To implement -> get the categories avalaible
    var category = ["Annonce", "Actualité", "News"];

    res.render('admin/newArticle', {category:category,  title: 'Ajouter un article',  layout:'admin/adminLayout'});
});

// Add the article || TO IMPLEMENT !!!
router.post('/new', function(req, res, next) {

    //Add the article in data base
});


module.exports = router;