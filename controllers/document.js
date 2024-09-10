const Document = require('../models/Document');

const list = async (req, res, next) => {

    try {
        const documentList = await Document.findAll();

        return res.send(documentList);
    } catch (error) {
        console.log(error);
        return res.status(500).json({
            message: 'something went wrong'
        })
    }
}

module.exports = {
    list
}
