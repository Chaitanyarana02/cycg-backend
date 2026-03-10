const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");
const Category = require("./Category");
const WhitePaper = require("./WhitePaper");

const Blog = sequelize.define(
  "Blog",
  {
    title: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    content: {
      type: DataTypes.TEXT("long"),
      allowNull: true,
    },
    image: {
      type: DataTypes.STRING,
    },
    categoryId: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    position: {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: 0,
    },
    whitePaperId: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    whitePaperCtaTitle: {
      type: DataTypes.STRING(255),
      allowNull: true,
    },
    whitePaperButtonText: {
      type: DataTypes.STRING(255),
      allowNull: true,
    },
  },
  {
    timestamps: true,
  }
);

Category.hasMany(Blog, { foreignKey: "categoryId" });
Blog.belongsTo(Category, { foreignKey: "categoryId" });
Blog.belongsTo(WhitePaper, { foreignKey: "whitePaperId" });

module.exports = Blog;
