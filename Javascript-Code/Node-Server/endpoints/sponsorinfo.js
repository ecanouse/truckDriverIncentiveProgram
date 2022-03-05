module.exports = function(app){
    app.get('/getDrivers', (req, res) => {
            return res.json({
              drivers: ["DRIVER ONE", "DRIVER TWO", "DRIVER THREE", "DRIVER FOUR", "DRIVER FIVE"]
            })
    });
}