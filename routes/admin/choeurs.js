var express = require('express');
var router = express.Router();


// New chore form
router.get('/new', function(req, res, next) {

    res.render('admin/registration', {layout:'admin/adminLayout', user: req.session.user,});
});


module.exports = router;
