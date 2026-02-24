const Blog = require("../models/Blog");
const Category = require("../models/Category");
const fs = require("fs");
const path = require("path");

const buildImageUrl = (req, imageName) => {
  if (!imageName) return null;
  return `${req.protocol}://${req.get("host")}/uploads/${imageName}`;
};

exports.createBlog = async (req, res) => {
  try {
    const { title, content, categoryId, position } = req.body;
    if (!categoryId) {
      return res.status(400).json({
        message: "categoryId is required",
      });
    }
    const category = await Category.findByPk(categoryId);

    if (!category) {
      return res.status(404).json({
        message: "Category not found",
      });
    }
    const image = req.file ? req.file.filename : null;

    const blog = await Blog.create({
      title,
      content,
      categoryId,
      position: position || 0,
      image,
    });

    const blogData = blog.toJSON();
    blogData.image = buildImageUrl(req, blog.image);

    res.status(201).json({
      message: "Blog created successfully",
      data: blogData,
    });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
exports.getBlogs = async (req, res) => {
  try {
    const { categoryId } = req.query;
    let whereCondition = {};
    if (categoryId) {
      whereCondition.categoryId = categoryId;
    }

    const blogs = await Blog.findAll({
      where: whereCondition,
      include: Category,
      order: [["position", "ASC"]],
    });

    const updatedBlogs = blogs.map((blog) => {
      const blogData = blog.toJSON();
      blogData.image = buildImageUrl(req, blog.image);
      return blogData;
    });

    res.json(updatedBlogs);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

exports.getBlogById = async (req, res) => {
  try {
    const blog = await Blog.findByPk(req.params.id, {
      include: Category,
    });

    if (!blog) {
      return res.status(404).json({ message: "Blog not found" });
    }

    const blogData = blog.toJSON();
    blogData.image = buildImageUrl(req, blog.image);

    res.json(blogData);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

exports.updateBlog = async (req, res) => {
  try {
    const blog = await Blog.findByPk(req.params.id);

    if (!blog) {
      return res.status(404).json({ message: "Blog not found" });
    }

    if (req.body.categoryId) {
      const category = await Category.findByPk(req.body.categoryId);
      if (!category) {
        return res.status(404).json({ message: "Category not found" });
      }
    }

    let image = blog.image;

    if (req.file) {
      image = req.file.filename;

      if (blog.image) {
        const oldImagePath = path.join(__dirname, '..', 'uploads', blog.image);

        if (fs.existsSync(oldImagePath)) {
          fs.unlinkSync(oldImagePath);
        }
      }
    }

    await blog.update({
      title: req.body.title ?? blog.title,
      content: req.body.content ?? blog.content,
      categoryId: req.body.categoryId ?? blog.categoryId,
      position: req.body.position ?? blog.position,
      image
    });

    const blogData = blog.toJSON();
    blogData.image = buildImageUrl(req, blog.image);

    res.status(200).json({
      message: "Blog updated successfully",
      data: blogData
    });

  } catch (error) {
    res.status(500).json({
      message: "Something went wrong",
      error: error.message
    });
  }
};


exports.deleteBlog = async (req, res) => {
  try {
    const blog = await Blog.findByPk(req.params.id);

    if (!blog) {
      return res.status(404).json({ message: "Blog not found" });
    }

    await blog.destroy();

    res.status(200).json({ message: "Blog deleted successfully" });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

exports.reorderBlogs = async (req, res) => {
  try {
    const blogs = req.body;

    if (!Array.isArray(blogs)) {
      return res.status(400).json({ message: "Invalid data format" });
    }

    for (let blog of blogs) {
      await Blog.update(
        { position: blog.position },
        { where: { id: blog.id } }
      );
    }

    res.status(200).json({ message: "Blog order updated successfully" });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
