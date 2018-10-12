var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    //To implement -> get list the director avalaible
    var president = ["dir1", "dir2", "dir3"];
    var chefchoeur = ["chef1", "chef2", "chef3"];
    res.render('choeurs/index', {president:president, chefchoeur:chefchoeur, title:'titleChoose'});
});

// SEARCH CHOIR TO DO
router.post('/', function(req, res, next) {

});


router.get('/calendrier', function(req, res, next) {

    res.render('choeurs/calendrier', { title: 'calendrier'});
});

module.exports = router;
