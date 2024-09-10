const School = require('../models/school');

const list = async (req, res, next) => {
    const levelId = req.query?.level_id || -1;

    try {
        const levelList = await School.findAll({
            where: { level_id: levelId },
        });

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
