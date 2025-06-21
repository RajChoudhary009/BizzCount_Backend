const express = require("express");
const router = express.Router();

const discoveryController = require("./discoveryController");

router.post("/discovery-calls", discoveryController.createDiscoveryCall);
router.get("/discovery-calls", discoveryController.getDiscoveryCalls); // ✅ Add this line

module.exports = router;
