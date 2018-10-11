var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('index', { title: 'News'});
});

router.get('/newArticle', function(req, res, next) {
    res.render('admin/newArticle', { title: 'Ajouter un article'});
});

module.exports = router;