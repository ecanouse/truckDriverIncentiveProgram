const express = require('express');
const cors = require('cors')


const PORT = process.env.PORT || 4000;

const app = express()
app.use(cors())

app.get('/test', (req, res) => {
    res.json({message: 'Node Test Successful!'})
});

app.listen(PORT, () => {
    console.log(`Node server listening on port ${PORT}`)
});