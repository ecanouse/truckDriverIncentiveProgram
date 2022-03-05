module.exports = function(app){
    app.post('/point-assignment', (req, res) => {
        console.log('Recieved point assignment');
        console.log(req.body);
        res.send({success: true})
    });
}