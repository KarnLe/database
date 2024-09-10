const { DataTypes, Sequelize } = require('sequelize');

const { sequelize } = require('../configs/database');

const Level = sequelize.define('level', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    code: {
        type: DataTypes.STRING(255),
        allowNull: false,
        unique: true
    },
    name: {
        type: DataTypes.STRING(255),
        allowNull: false,
    },
}, {
    timestamps: false,
    tableName: 'level'
});

module.exports = Level;
