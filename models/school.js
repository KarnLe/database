const { DataTypes, Sequelize } = require('sequelize');

const { sequelize } = require('../configs/database');
const Level = require('./level');

const School = sequelize.define('school', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: DataTypes.STRING(255),
        allowNull: false,
    },
    url: {
        type: DataTypes.STRING(255),
        allowNull: false,
    },
}, {
    timestamps: false,
    tableName: 'school'
});

Level.hasMany(School, {
    foreignKey: { name: 'level_id', type: DataTypes.INTEGER, allowNull: false }
});
School.belongsTo(Level, {
    foreignKey: { name: 'level_id', type: DataTypes.INTEGER, allowNull: false }
});

module.exports = School;
