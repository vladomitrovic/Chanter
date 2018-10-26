var express = require('express');
var router = express.Router();
var models = require('../../models');


// New event form
router.get('/new', function(req, res, next) {
    models.Groupe.findAll().then((groupes) => {
        res.render('admin/events/newEvents', {groupes:groupes , user: req.session.user, layout:'admin/adminLayout'});
    });
});

// List events
router.get('/list', function(req, res, next) {
    models.Event.findAll().then((events) => {
        res.render('admin/events/listEvents', {events:events, user: req.session.user, layout:'admin/adminLayout'});
    });
});


router.get('/modify/:id', function(req, res, next) {

    models.Event.findOne({
        where : {id:  req.params.id}
    }).then((event) => {
        models.Groupe.findAll().then((groupes) => {
            res.render('admin/events/newEvents', {groupes:groupes , user: req.session.user, layout:'admin/adminLayout',event: event });
        });
    });
});


router.post('/add', function(req, res, next) {
    models.Groupe.findOne({
        where: {
            groupName: req.body.groupe}

    }).then((groupe) => {
        var groupeid = groupe.id;

        models.Event.create({
            title: req.body.title,
            info: req.body.info,
            start: req.body.start,
            end: req.body.end,
            GroupeId: groupeid
        }).then(() => {
            res.redirect('/admin/event/list')
        })
    }).catch(console.error);

});

router.post('/modify/:id', function(req, res, next) {
    models.Category.findOne({
        where: {
            [Op.or]: [{categoryFR: req.body.categorie}, {categoryDE: req.body.categorie}]
        }
    }).then((category) => {
        var categoryId = category.id;
        var user = req.session.user;


        models.Article.update({
                titleFR: req.body.titleFR,
                chapeauFR: req.body.chapeauFR,
                textFR: req.body.textFR,
                titleDE: req.body.titleDE,
                chapeauDE: req.body.chapeauDE,
                textDE: req.body.textDE,
                refPicture: req.body.myFile,
                CategoryId: categoryId},
            {where: {id: req.params.id}}
        ).then(() => {
            res.redirect('/admin/articles/list')
        })
    }).catch(console.error);
});

router.get('/delete/:id',  (req, res) => {
    models.Event.destroy({
        where : {id:  req.params.id}
    }).then(() => {
        res.redirect('/admin/event/list')
    });
});



module.exports = router;
