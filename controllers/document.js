const Document = require('../models/document');

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

const getDocumentDetail = async (req, res, next) => {

    const documentId = req?.params?.id || -1;

    try {
        const document = await Document.findByPk(documentId);

        if(!document) return res.status(404).send({ message: 'not found' });

        return res.send(document);
    } catch (error) {
        console.log(error);
        return res.status(500).json({
            message: 'something went wrong'
        })
    }
}

module.exports = {
    list,
    getDocumentDetail
}
