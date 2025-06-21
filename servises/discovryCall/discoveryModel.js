const { Sequelize, DataTypes } = require('sequelize');
const { database } = require("../connection/database"); // Import your Sequelize instance

const DiscoveryCall = database.define("DiscoveryCall", {
    firstName: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    lastName: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            isEmail: true,
        },
    },
    phone: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    company: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    referralSource: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    message: {
        type: DataTypes.TEXT,
        allowNull: true,
    }
});

module.exports = DiscoveryCall;

