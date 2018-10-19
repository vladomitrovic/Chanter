var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/choeurEnHerbe', function(req, res, next) {
    res.render('projetmusical/choeurEnHerbe', { title: 'choeurEnherbe' });
});

router.get('/frappFestival', function(req, res, next) {
    res.render('projetmusical/frappFestival', { title: 'frappFestival' });
});

router.get('/airDeMontagne', function(req, res, next) {
    res.render('projetmusical/airDeMontagne', { title: 'airDeMontagne' });
});


module.exports = router;