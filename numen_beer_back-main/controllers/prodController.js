const { prod } = require('../models');
const { UploadImg, upload, VerifyMulterError, deleteImg } = require('../s3Services/s3');

const getAllProds = async (req, res) => {
  try{
    const query = await prod.findAll();
    return res.status(200).json(query);
  }catch{
    res.status(404).json({ message: "Something went wrong" });
  }
};


const insertProds = async (req, res, next) => {

  const data = {name: req.body.name,
                packaging: req.body.packaging,
                category: req.body.category,
                stock: req.body.stock,
                price: req.body.price,
                description: req.body.description,
                createdAt: new Date
  }
try {
const results = await UploadImg(req.files);
if(results.length > 0){
  data.image = results[0].key
}

    const entry = prod.create(data)
    return res.status(202).json({ message: 'Datos almacenados exitosamente!' });
  } catch (err) {
    res.status(404).json({ message: "ERROR intentelo mas tarde" });
  }
};

const updateProd = async (req, res) => {

  const data = {
    name: req.body.name,
    packaging: req.body.packaging,
    category: req.body.category,
    stock: req.body.stock,
    price: req.body.price,
    description: req.body.description,
    updatedAt: new Date
}
  console.log(req.body)
    try {
        const results = await UploadImg(req.files);

        if(results.length > 0) {
          data.image = results[0].key
        }
        const updateResult = await prod.update(
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

const updateStock = async (req, res) => {

  const data = {
    stock: req.body.stock,
}
  console.log("Actualizando stock " + req.body)

        const updateResult = await prod.update(
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


const deleteProd = async (req, res) => {
  const newsExists = await prod.findOne({ // find the entry to be deleted 
    where: { id: req.params.id },
  });

  if (newsExists) { // If it exists then delete it

    try {

      await prod.destroy({where: { id: req.params.id}})
      res.json({msg: 'it was deleted'})

    } catch (error) {
      console.log(error)

    }
  } else {

    return res.json({msg: 'the news does not exist'})
  }
}

const findProd = async (req, res) => {
  const id = req.params.id
  try {
    const entry = await prod.findOne({where: { id }})

    if(entry != null){
      return res.status(200).json(entry)
    }else{
      return res.status(404).json({ message: 'Novedad no existe' })
    }
    
   
  } catch (err) {
    return res.status(404).json({ error: 'Something went wrong' })

  }
}

module.exports = { insertProds, updateProd, updateStock, deleteProd, findProd, getAllProds }