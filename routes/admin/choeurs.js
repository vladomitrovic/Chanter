var express = require('express');
var router = express.Router();
var models = require('../../models')


// New chore form
router.get('/new', function(req, res, next) {

    res.render('admin/editChoir', {layout:'admin/adminLayout', user: req.session.user, choeur: new models.Choir(), action: "new"});
});

router.get('/update/:id', function(req, res, next) {
    models.Choir.findOne({where:{id: req.params.id}, include: models.Locality}).then((choir) => {
        console.log(JSON.stringify(choir));
        res.render('admin/editChoir', {layout:'admin/adminLayout', user: req.session.user, choeur: choir, action: "update"});
    });
});

router.post('/update/:id', function(req, res, next) {

});

router.get('/delete', function(req, res, next) {

    res.render('admin/deleteChoir', {layout:'admin/adminLayout', user: req.session.user,});
});


module.exports = router;
