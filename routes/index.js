var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Kurs Dockera', users:['Damian', 'Edward', 'Jakub','Amazonka'] });
});

module.exports = router;
