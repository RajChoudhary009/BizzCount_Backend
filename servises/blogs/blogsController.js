const blog = require('./blogModels');

// CREATE blog
const createBlog = async (req, res) => {
    try {
      const { description, blog_link} = req.body;
      const blog_url = req.file ? req.file.filename : null;
  
      if (!blog_url) {
        return res.status(400).json({ error: 'Blog image is required' });
      }
  
      const newBlog = await blog.create({ description, blog_link, blog_url });
  
      return res.status(201).json({ success: true, message: "Blog created", data: newBlog });
    } catch (error) {
      console.error('Error creating blog:', error);
      return res.status(500).json({ error: 'Internal server error' });
    }
  };

// GET all blogs
const getAllBlogs = async (req, res) => {
  try {
    const blogs = await blog.findAll();
    return res.status(200).json({ success: true, data: blogs });
  } catch (error) {
    console.error('Error fetching blogs:', error);
    return res.status(500).json({ error: 'Internal server error' });
  }
};



// DELETE blog
const deleteBlog = async (req, res) => {
  try {
    const blogs = await blog.findByPk(req.params.id);
    if (!blogs) return res.status(404).json({ error: 'Blog not found' });

    await blogs.destroy();
    return res.status(200).json({ success: true, message: 'Blog deleted' });
  } catch (error) {
    console.error('Error deleting blog:', error);
    return res.status(500).json({ error: 'Internal server error' });
  }
};

module.exports = {
  createBlog,
  getAllBlogs,
  deleteBlog,
};
