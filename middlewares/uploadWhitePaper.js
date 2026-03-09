const multer = require('multer');
const path = require('path');
const fs = require('fs');

const whitepaperDir = path.join(__dirname, '..', 'uploads', 'whitepapers');
if (!fs.existsSync(whitepaperDir)) {
  fs.mkdirSync(whitepaperDir, { recursive: true });
}

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, whitepaperDir);
  },
  filename: function (req, file, cb) {
    const ext = path.extname(file.originalname) || '.pdf';
    const uniqueName = Date.now() + '-' + (file.originalname || 'document.pdf').replace(/[^a-zA-Z0-9.-]/g, '_');
    cb(null, uniqueName);
  }
});

const fileFilter = (req, file, cb) => {
  const allowed = ['application/pdf'];
  if (allowed.includes(file.mimetype)) {
    cb(null, true);
  } else {
    cb(new Error('Only PDF files are allowed for white paper upload'), false);
  }
};

const uploadWhitePaper = multer({
  storage,
  fileFilter,
  limits: { fileSize: 20 * 1024 * 1024 } // 20MB
});

module.exports = uploadWhitePaper;
