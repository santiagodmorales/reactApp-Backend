var express = require("express");
var router = express.Router();
const { getAllProdatas } = require("../controllers/prodataController");

// Get all entries (news)
router.get(
  "/",
  getAllProdatas
);


module.exports = router;
