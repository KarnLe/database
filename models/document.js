const { DataTypes, Sequelize } = require('sequelize');

const { sequelize } = require('../configs/database');

const Document = sequelize.define('document', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    title: {
        type: DataTypes.STRING(255),
        allowNull: false,
    },
    sub_title: {
        type: DataTypes.STRING(255),
        allowNull: true,
    },
    content: {
        type: DataTypes.TEXT,
        allowNull: true
    },
    created: {
        type: DataTypes.STRING(255),
        allowNull: true
    },
}, {
    timestamps: false,
    tableName: 'document'
});

module.exports = Document;
