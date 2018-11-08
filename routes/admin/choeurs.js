var express = require('express');
var router = express.Router();
var models = require('../../models');


router.get('/', function(req, res, next)
{
    models.Choir.findAll({include: [{model: models.Groupe}]}).then((choeurs) => {
        res.render('admin/choeurs/index', {layout:'admin/adminLayout', choeurs: choeurs});
    });

});

// New chore form
router.get('/new', async function(req, res, next) {

    groups = await models.Groupe.findAll().then((groups) => { return groups});

    choirTypes = await models.ChoirType.findAll().then((choirTypes)=>{return choirTypes});

    languages = await models.Language.findAll().then((languages) => {return languages});

    res.render('admin/choeurs/edit', {layout:'admin/adminLayout', user: req.session.user, choeur: new models.Choir(), groups: groups, languages: languages, choirTypes : choirTypes, action: "new"});
});

router.post('/new', function (req, res, next) {

    models.Locality.findOrCreate({
        where:{npa:req.body.npa}, defaults:{localityName: req.body.localityName}
    }).spread((locality, created)=>{


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
            GroupeId: req.body.GroupeId,
            LanguageId: req.body.LanguageId,
            LocalityId: locality.id
        }).then(res.redirect("/admin/choeurs"));

    });


});

router.get('/edit/:id', async function(req, res, next) {

    groups = await models.Groupe.findAll().then((groups) => { return groups});

    choirTypes = await models.ChoirType.findAll().then((choirTypes)=>{return choirTypes});

    languages = await models.Language.findAll().then((languages) => {return languages});

    models.Choir.findOne({where:{id: req.params.id}, include: models.Locality}).then((choir) => {
        res.render('admin/choeurs/edit', {layout:'admin/adminLayout', user: req.session.user, choeur: choir, groups: groups, languages: languages, choirTypes : choirTypes, action: "edit"});
    });
});

router.post('/edit', function(req, res, next) {

    models.Locality.findOrCreate({
        where:{npa:req.body.npa}, defaults:{localityName: req.body.localityName}
    }).spread((locality, created)=>{


        models.Choir.update({
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
            GroupeId: req.body.GroupeId,
            LanguageId: req.body.LanguageId,
            LocalityId: locality.id},
            {where: {id: req.body.id}
        }).then(() => {res.redirect("/admin/choeurs");});
    });

});

router.post('/delete',  (req, res, next) => {
    if(req.body.confirm) {
        models.Choir.destroy({
            where: {id: req.body.id}
        }).then(() => {
            res.redirect("/admin/choeurs/");
        });
    }
    else
    {
        res.render('admin/choeurs/delete', {layout: "admin/adminLayout", id: req.body.id});
    }
});


module.exports = router;
