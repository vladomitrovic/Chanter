var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('avcc/index', { title: 'Express' });
});

router.get('/comite', function(req, res, next) {
    res.render('avcc/comite', { title: 'Express' });
});


router.get('/commission', function (req, res, next) {
    res.render('avcc/commission', {title: 'Express'});

})


module.exports = router;