var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('choeurs/index', { title: {langs:chorus}});
});

router.get('/calendrier', function(req, res, next) {
    res.render('choeurs/calendrier', { title: 'Express' });
});

module.exports = router;
