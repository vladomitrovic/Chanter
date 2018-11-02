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
            models.Ticket.findAll(
                {where:{statut:'answered'},
                    include: [{
                        model: models.Category,
                    }]}
            ).then((ticketsTraite) => {

                models.Ticket.findAll(
                    {where:{statut:'toAnswer'},
                        include: [{
                            model: models.Category,
                        }]}

                ).then((ticketsNonTraite) => {

                    res.render('admin/Tickets/listTickets', {
                        ticketsTraite: ticketsTraite,
                        ticketsNonTraite: ticketsNonTraite,
                        user: req.session.user,
                        layout: 'admin/adminLayout'
                    });

                });
            });

        });


        router.get('/modify/:id', (req, res,)  => {

            models.Ticket.update({
                    statut:'answered'},
                {where: {id: req.params.id}
                }).then(() => {
                res.redirect('/admin/tickets/list')
            });
        });



        module.exports = router;
