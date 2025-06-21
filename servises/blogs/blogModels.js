const { Sequelize, DataTypes } = require('sequelize');
const { database } = require("../connection/database"); // Import your Sequelize instance

const blog = database.define('blog', {
    description: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    blog_link: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    blog_url: {
        type: DataTypes.STRING,
        allowNull: false,
    },
})

module.exports = blog;