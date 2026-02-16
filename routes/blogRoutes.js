const express = require('express');
const router = express.Router();
const blogController = require('../controllers/blogController');
const upload = require('../middlewares/upload');

router.post('/reorder', blogController.reorderBlogs);
router.post('/', upload.single('image'), blogController.createBlog);
router.post('/:id', upload.single('image'), blogController.updateBlog);
router.get('/', blogController.getBlogs);
router.get('/:id', blogController.getBlogById);
router.delete('/:id', blogController.deleteBlog);

module.exports = router;
