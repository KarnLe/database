const Level = require('../models/level');

const list = async (req, res, next) => {

    try {
        const levelList = await Level.findAll();

        return res.send(levelList);
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
