var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('presentation/index', { title: 'Express' });
});

router.get('/comite', function(req, res, next) {
    res.render('presentation/comite', { title: 'Express' });
});

module.exports = router;