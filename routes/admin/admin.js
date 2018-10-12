var express = require('express');
var router = express.Router();
var articleRouter = require('./articles')
var choeursRouter = require('./choeurs')

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('admin/index', { title: 'Admin',  layout:'admin/adminLayout'});
});

router.use('/articles', articleRouter);
router.use('/choeurs', choeursRouter);


module.exports = router;