const express = require('express');
require('dotenv').config(); // Load env variables
const app = express();
const bodyParser = require('body-parser');
const PORT = process.env.PORT || 5000;
const cors = require('cors');

// Enable CORS with default settings (open to all origins)
app.use(cors());

// OR for custom CORS policy:
app.use(cors({
    origin: "*",
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    credentials: true,
}));


// Parse JSON data
app.use(bodyParser.json());

// Parse form data (application/x-www-form-urlencoded)
app.use(bodyParser.urlencoded({ extended: true }));

const { testDbConnection } = require('./servises/connection/database')

const blogsRoute = require('./servises/blogs/blogsRoutes')
const discoveryCall = require('./servises/discovryCall/discoveryRoutes')

// Middleware to parse JSON
app.use(express.json());

testDbConnection()
app.use('/uploads', express.static("uploads"));

// Start server
app.get('/hello', (req, res) => {
    res.send({ 'message': 'hello user i am here' })
})

// Route
app.use('/api/blog', blogsRoute)
app.use('/api', discoveryCall)

// app listen
app.listen(PORT, () => {
    console.log(`Server started at https//localhost:${PORT}...`)
});

