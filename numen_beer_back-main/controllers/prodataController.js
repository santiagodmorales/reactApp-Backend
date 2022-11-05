const { prodata } = require('../models');

const getAllProdatas = async (req, res) => {
  try{
    const query = await prodata.findAll();
    return res.status(200).json(query);
  }catch{
    res.status(404).json({ message: "Something went wrong" });
  }
};


module.exports = { getAllProdatas }