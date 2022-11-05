const { Contacts } = require('../models');


const getContacts = async (req, res, next) => {
  let query = await Contacts.findAll();

  return res.status(200).json(query);
};


const insertContact = async (req, res, next) => {
  
  const { firstName, lastName, phone, email, message } = req.body;
  
  try {
    const contact = Contacts.create({
        firstName,
        lastName,
        phone,
        email,
        message,
        createdAt: new Date
      });
      
                
    return res.status(202).json({ message: 'Datos de contacto almacenados exitosamente!'});     
  }

  catch (error) {
    return res.status(400).json(error);

  };
};


const deleteContact = async (req, res) => {
  const messageExist = await Contacts.findOne({ // find the entry to be deleted 
    where: { id: req.params.id },
  });

  if (messageExist) { // If it exists then delete it

    try {

      await Contacts.destroy({where: { id: req.params.id}})
      res.json({msg: 'it was deleted'})

    } catch (error) {
      console.log(error)

    }
  } else {

    return res.json({msg: 'the message does not exist'})
  }
}

const getContactById = async (req, res) => {
  const id = req.params.id
  try {
    const query = await Contacts.findOne({where: { id }})

    if(query != null){
      return res.status(200).json(query)
    }else{
      return res.status(404).json({ message: 'Message was not found or not exist' })
    }
    
   
  } catch (err) {
    return res.status(404).json({ error: 'Something went wrong' })

  }
}


module.exports = { getContacts, insertContact, deleteContact, getContactById }
