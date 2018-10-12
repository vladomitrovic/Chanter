var express = require('express');
var router = express.Router();

/* GET home page. */

//TOTO
router.get('/', function(req, res, next) {

  var news =  [
        {"titre":"new1", "descr":"Cette journée animée par Charles Barbier se veut interactive et propose de réfléchir aux aspects cachés de notre pratique de chefs de chœur, notamment la communication non verbale et les choix que nous faisons avant même d’être face au chœur. En choisissant comme fil rouge la prise de risque, nous aurons l’occasion de partager des […]"},
        {"titre":"new2", "descr":"Cette journée animée par Charles Barbier se veut interactive et propose de réfléchir aux aspects cachés de notre pratique de chefs de chœur, notamment la communication non verbale et les choix que nous faisons avant même d’être face au chœur. En choisissant comme fil rouge la prise de risque, nous aurons l’occasion de partager des […]"},
    ]
  res.render('index', {news:news, title: 'News'});
});


module.exports = router;
