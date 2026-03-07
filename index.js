require('dotenv').config();
const express = require('express');
const cors = require('cors');

const app = express();

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use('/uploads', express.static('uploads'));

app.use('/api/categories', require('./routes/categoryRoutes'));
app.use('/api/blogs', require('./routes/blogRoutes'));
app.use('/api/contacts', require('./routes/contactRoutes'));
app.use('/api/whitepaper', require('./routes/whitePaperRoutes'));

app.get('/', (req, res) => {
  res.send('Blog API Running 🚀');
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
