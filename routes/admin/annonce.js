var express = require('express');
var router = express.Router();
var models = require('../../models');


// New ads form
router.get('/new', function(req, res, next) {
    var user = req.session.user;

    res.render('admin/annonces/newAnnonce', { user: req.session.user, layout:user.Roles[0].layout});
});

// List ads
router.get('/list', function(req, res, next) {
    var user = req.session.user;

    models.Article.findAll({
        where : {CategoryId:  null}
    }).then((annonces) => {
        res.render('admin/annonces/listAnnonces', {annonces:annonces, user: req.session.user, layout:user.Roles[0].layout});
    });
});

// Update ads
router.get('/modify/:id', function(req, res, next) {
    var user = req.session.user;

    models.Article.findOne({
        where : {id:  req.params.id}
    }).then((annonce) => {
            res.render('admin/annonces/newAnnonce', {annonce:annonce , user: req.session.user, layout:user.Roles[0].layout});
    });
});


router.get('/delete/:id',  (req, res) => {
    models.Article.destroy({
        where : {id:  req.params.id}
    }).then(() => {
        res.redirect('/admin/annonce/list')
    });
});


// Add the ads
router.post('/add', function(req, res, next) {

        var user = req.session.user;

        models.Article.create({
            titleFR: req.body.titleFR,
            textFR: req.body.textFR,
            PersonId :user.id,
        }).then(() => {
            res.redirect('/admin/annonce/list')
        })
});

router.post('/modify/:id', function(req, res, next) {


        models.Article.update({
                titleFR: req.body.titleFR,
                textFR: req.body.textFR},
            {where: {id: req.params.id}
            }).then(() => {
            res.redirect('/admin/annonce/list')
        })

});



module.exports = router;
