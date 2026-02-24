const express = require('express');
const router = express.Router();
const categoryController = require('../controllers/categoryController');

router.post('/', categoryController.createCategory);
router.get('/', categoryController.getCategories);
router.get('/:id', categoryController.getCategoryById);
router.post('/:id', categoryController.updateCategory);
router.delete('/:id', categoryController.deleteCategory);
router.post('/reorder', categoryController.reorderCategories);

module.exports = router;
