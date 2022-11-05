var express = require('express');
var router = express.Router();
const { register, loginUser, deleteUser } = require('../controllers/authControllers');


/* POST user registration. */
router.post('/register',
register);

/* POST user Login. */
router.post('/login',
loginUser);

router.post('/users/delete/:id', deleteUser)


module.exports = router;
