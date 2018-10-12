var express = require('express');
var router = express.Router();

/* GET users listing. */

router.get('/', function(req, res, next) {
    res.render('login', { title:'connexion'});
});

router.post('/login', function(req, res, next) {
    res.render('login');
});

module.exports = router;
