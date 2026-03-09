const WhitePaper = require('../models/WhitePaper');
const path = require('path');
const fs = require('fs');

exports.uploadWhitePaper = async (req, res) => {
  try {
    if (!req.file) {
      return res.status(400).json({
        message: 'No PDF file uploaded. Please send a file with field name "pdf".'
      });
    }

    const fileUrl = `${req.protocol}://${req.get('host')}/uploads/whitepapers/${req.file.filename}`;
    const filePath = `uploads/whitepapers/${req.file.filename}`;
    // Store the PDF's actual name in DB (strip path so only filename is saved)
    const pdfName = (req.file.originalname || req.file.filename || 'document.pdf')
      .replace(/^.*[\\/]/, '')
      .trim();

    const whitePaper = await WhitePaper.create({
      filename: req.file.filename,
      originalName: pdfName,
      url: fileUrl,
      size: req.file.size,
      filePath
    });

    const data = whitePaper.toJSON();

    res.status(201).json({
      message: 'White paper uploaded successfully',
      data
    });
  } catch (error) {
    res.status(500).json({
      message: 'Failed to upload white paper',
      error: error.message
    });
  }
};

exports.downloadWhitePaper = async (req, res) => {
  try {
    const whitePaper = await WhitePaper.findByPk(req.params.id);
    if (!whitePaper) {
      return res.status(404).json({ message: 'White paper not found' });
    }

    const fullPath = whitePaper.filePath
      ? path.join(__dirname, '..', whitePaper.filePath)
      : path.join(__dirname, '..', 'uploads', 'whitepapers', whitePaper.filename);

    if (!fs.existsSync(fullPath)) {
      return res.status(404).json({ message: 'File not found on server' });
    }

    // Use the PDF name from DB + current date when downloading (e.g. kal-2026-03-09.pdf)
    const storedName = (whitePaper.originalName || '').trim().replace(/^.*[\\/]/, '') || whitePaper.filename || 'document.pdf';
    const baseName = storedName.toLowerCase().endsWith('.pdf') ? storedName.slice(0, -4) : storedName;
    const dateStr = new Date().toISOString().slice(0, 10); // YYYY-MM-DD
    const downloadName = `${baseName}-${dateStr}.pdf`;
    const safeName = downloadName.replace(/["\r\n]/g, '');
    const encodedName = encodeURIComponent(downloadName);

    res.setHeader('Content-Type', 'application/pdf');
    res.setHeader('Content-Disposition', `attachment; filename="${safeName}"; filename*=UTF-8''${encodedName}`);
    res.sendFile(path.resolve(fullPath));
  } catch (error) {
    res.status(500).json({
      message: 'Failed to download white paper',
      error: error.message
    });
  }
};
