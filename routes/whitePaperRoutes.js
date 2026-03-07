const express = require('express');
const router = express.Router();
const whitePaperController = require('../controllers/whitePaperController');
const uploadWhitePaper = require('../middlewares/uploadWhitePaper');

router.post('/', (req, res, next) => {
  uploadWhitePaper.single('pdf')(req, res, (err) => {
    if (err) {
      return res.status(400).json({
        message: err.message || 'Invalid file. Only PDF is allowed.'
      });
    }
    next();
  });
}, whitePaperController.uploadWhitePaper);

router.get('/:id/download', whitePaperController.downloadWhitePaper);

module.exports = router;
