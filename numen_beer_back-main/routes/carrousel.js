var express = require("express");
var router = express.Router();
const { getAllSlides, insertSlide, updateSlide, deleteSlide, findSlide } = require("../controllers/carrouselControllers");
const {upload} = require('../s3Services/s3');

// Get all entries (news)
router.get(
  "/",
  getAllSlides
);

router.get('/:id', findSlide);

router.post('/', upload.array("image"),  
insertSlide
  );

router.delete('/:id', deleteSlide)

router.put('/:id', upload.array("image"), updateSlide);


module.exports = router;
