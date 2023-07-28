const express = require('express')
const redis = require("../redis");
const router = express.Router()

router.get("/", async (req, res) => {
  const added = await redis.getAsync("added_todos") | 0
  res.send({added_todos: added})
})

module.exports = router
