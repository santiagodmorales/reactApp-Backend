// dependencias
var express = require('express');
var router = express.Router();

// middlewares
const { getContacts, insertContact, deleteContact, getContactById } = require("../controllers/contactsController");


router.get(
  "/",
  getContacts
);

router.get(
  "/:id",
  getContactById
);
/* POST verifico que contenga campos name y email y registro */
router.post('/',   
  insertContact
);

router.delete('/:id', deleteContact)


module.exports = router;