var express = require('express');
var router = express.Router();
var models = require('../../models');
var i18n = require ('i18n-express');
var Sequelize = require('sequelize');
const Op = Sequelize.Op;

/* GET home page. */
router.get('/', function(req, res, next) {

});


// List tickets
router.get('/list', function(req, res, next) {
    models.Ticket.findAll().then((tickets) => {
        res.render('admin/Tickets/listTickets', {tickets:tickets, user: req.session.user, layout:'admin/adminLayout'});
    });
});
//
//
// router.get('/delete/:id',  (req, res) => {
//     models.Article.destroy({
//         where : {id:  req.params.id}
//     }).then(() => {
//         res.redirect('/admin/articles/list')
//     });
// });
//


module.exports = router;
