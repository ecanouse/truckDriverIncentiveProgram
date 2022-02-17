const express = require('express');
const path = require('path');
const cors = require('cors')


const PORT = process.env.PORT || 4000;

const app = express()
app.use(cors())



app.get('/test', (req, res) => {
    res.json({message: 'Node Test Successful!'})
});

app.use(express.static(path.join(__dirname, "../react-client", 'build')));

app.get('/*', function (req, res) {
  res.sendFile(path.join(__dirname, "../react-client", 'build', 'index.html'));
});

app.listen(PORT, () => {
    console.log(`Node server listening on port ${PORT}`)
});