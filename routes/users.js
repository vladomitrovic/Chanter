var express = require('express');
var router = express.Router();

/* GET users listing. */

router.get('/', function(req, res, next) {
    res.render('login');
});

router.get('/login', function(req, res, next) {
    res.render('login');
});


router.post('/login', function(req, res, next) {
    res.render('login');
});

module.exports = router;
