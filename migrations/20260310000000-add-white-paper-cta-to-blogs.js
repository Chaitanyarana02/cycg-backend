"use strict";

module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.addColumn("Blogs", "whitePaperCtaTitle", {
      type: Sequelize.STRING(255),
      allowNull: true,
    });
    await queryInterface.addColumn("Blogs", "whitePaperButtonText", {
      type: Sequelize.STRING(255),
      allowNull: true,
    });
  },

  async down(queryInterface) {
    await queryInterface.removeColumn("Blogs", "whitePaperCtaTitle");
    await queryInterface.removeColumn("Blogs", "whitePaperButtonText");
  },
};
