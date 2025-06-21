const express = require('express');
const router = express.Router();

const multer = require('multer');

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, './uploads')
    },
    filename: function (req, file, cb) {
      cb(null, `${Date.now()}-${file.originalname}`);
    }
  })

  const upload = multer({ storage: storage })

  const blogController = require('./blogsController');

// Create blog
router.post('/create', upload.single('blog_url'), blogController.createBlog);
router.get('/blogs',  blogController.getAllBlogs);
router.delete('/delete/:id', blogController.deleteBlog);

module.exports = router;
