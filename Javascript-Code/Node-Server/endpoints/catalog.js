module.exports = function(app, connection){
    const axios = require('axios');

    app.get('/getListing', (req, res) => {
        axios.get(`https://openapi.etsy.com/v3/application/listings/1156488806`, {headers: {'x-api-key': 'h7ctibmsc63qthr5ozej14i4'}})
        .then(function (response) {
            const name = response.data.title
            const description = response.data.description
            const quantity = response.data.quantity
            return res.json({
                name: name,
                description: description,
                quantity: quantity
            })
        })
        .catch(function (error) {
            console.log(error);
        })
    });
}