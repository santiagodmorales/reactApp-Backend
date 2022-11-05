const { carrousel } = require('../models');
const { UploadImg, upload, VerifyMulterError, deleteImg } = require('../s3Services/s3');

const getAllSlides = async (req, res) => {
  try{
    const query = await carrousel.findAll();
    return res.status(200).json(query);
  }catch{
    res.status(404).json({ message: "Something went wrong" });
  }
};


const insertSlide = async (req, res, next) => {

  const data = {title: req.body.title,
                phrase: req.body.phrase,
                createdAt: new Date
  }
try {
const results = await UploadImg(req.files);
if(results.length > 0){
  data.image = results[0].key
}

    const entry = carrousel.create(data)
    return res.status(202).json({ message: 'Datos almacenados exitosamente!' });
  } catch (err) {
    res.status(404).json({ message: "ERROR intentelo mas tarde" });
  }
};

const updateSlide = async (req, res) => {

    const data = {title: req.body.title,
        phrase: req.body.phrase,
        createdAt: new Date
}

    try {
        const results = await UploadImg(req.files);
        if(results.length > 0) {
          data.image = results[0].key
        }
        const updateResult = await carrousel.update(
            data, {
                where: { id: req.params.id },
            }
        )

        if(updateResult[0] === 0) {
            throw ({message: 'No existe un producto con este id', status: 404});
      
          } else {
            return res.status(200).json(data);
          }
    }
    catch (error) {
        return res.status(400).json(error);

    };
}


const deleteSlide = async (req, res) => {
  const slideExists = await carrousel.findOne({ // find the entry to be deleted 
    where: { id: req.params.id },
  });

  if (slideExists) { // If it exists then delete it

    try {

      await carrousel.destroy({where: { id: req.params.id}})
      res.json({msg: 'it was deleted'})

    } catch (error) {
      console.log(error)

    }
  } else {

    return res.json({msg: 'the news does not exist'})
  }
}

const findSlide = async (req, res) => {
  const id = req.params.id
  try {
    const entry = await carrousel.findOne({where: { id }})

    if(entry != null){
      return res.status(200).json(entry)
    }else{
      return res.status(404).json({ message: 'Slide no existe' })
    }
    
   
  } catch (err) {
    return res.status(404).json({ error: 'Something went wrong' })

  }
}

module.exports = { getAllSlides, insertSlide, updateSlide, deleteSlide, findSlide }