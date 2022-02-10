const express = require('express');

const PORT = process.env.PORT || 4000;

const app = express()

app.listen(PORT, () => {
    console.log(`Node server listening on port ${PORT}`)
})