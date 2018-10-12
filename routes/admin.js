var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('admin/index', { title: 'Admin',  layout:'admin/adminLayout'});
});
//

// New article from
router.get('/newArticle', function(req, res, next) {

    //To implement -> get the categories avalaible
    var category = ["Annonce", "Actualité", "News"];

<<<<<<< HEAD
    res.render('admin/newArticle', {category:category,  title: 'Ajouter un article'});
=======
    res.render('admin/newArticle', {category:categroy,  title: 'Ajouter un article' ,  layout:'admin/adminLayout'});
>>>>>>> 27c3af3d2b83281ccc94e27f108a617229247928
});


// Add the article || TO IMPLEMENT !!!
router.post('/newArticle', function(req, res, next) {

    //Add the article in data base

});

module.exports = router;