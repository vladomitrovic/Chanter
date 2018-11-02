var express = require('express');
var router = express.Router();
var models = require('../../models');


router.get('/', function(req, res, next)
{
   res.render('admin/choeurs/index', {layout:'admin/adminLayout'});
});

// New chore form
router.get('/new', function(req, res, next) {

    res.render('admin/choeurs/edit', {layout:'admin/adminLayout', user: req.session.user, choeur: new models.Choir(), action: "new"});
});

router.post('/new', function (req, res, next) {

    console.log(JSON.stringify(req.body));

    models.Locality.findOrCreate({
        where:{npa:req.body.npa}, defaults:{localityName: req.body.localityName}
    }).spread((locality, created)=>{

        console.log(JSON.stringify(locality));

        models.Choir.create({
            choirName: req.body.choirName,
            address1: req.body.address1,
            address2: req.body.address2,
            website: req.body.website,
            otherType: req.body.otherType,
            yearOfCreation: req.body.yearOfCreation,
            chEglise: req.body.chEglise,
            chGospel: req.body.chGospel,
            memberfc: req.body.memberfc,
            entryfc: req.body.entryfc,
            entryGroup: req.body.entryGroup,
            remarks: req.body.remarks,
            ChoirTypeId: req.body.ChoirTypeId,
            GroupeId: req.body.GroupId,
            LanguageId: req.body.LanguageId,
            LocalityId: locality.id
        }).then(res.redirect("/admin/choeurs"));

    });


});

router.get('/edit/:id', function(req, res, next) {
    models.Choir.findOne({where:{id: req.params.id}, include: models.Locality}).then((choir) => {
        console.log(JSON.stringify(choir));
        res.render('admin/choeurs/edit', {layout:'admin/adminLayout', user: req.session.user, choeur: choir, action: "edit"});
    });
});

router.post('/edit/:id', function(req, res, next) {

});

router.get('/delete', function(req, res, next) {

    res.render('admin/deleteChoir', {layout:'admin/adminLayout', user: req.session.user,});
});


module.exports = router;
