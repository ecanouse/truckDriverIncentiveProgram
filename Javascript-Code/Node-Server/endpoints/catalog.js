module.exports = function(app, connection){
    const axios = require('axios');

    app.get('/getListing', (req, res) => {
        axios.get(`https://openapi.etsy.com/v3/application/listings/${req.query.listingId}`, {headers: {'x-api-key': 'h7ctibmsc63qthr5ozej14i4'}})
        .then(function (response) {
            let price = response.data.price.amount / response.data.price.divisor
            switch(response.data.price.currency_code){
                case 'AUD':
                    price *= 0.75;
                    break;
                case 'GBP':
                    price *= 1.31;
                    break;
                case 'CAD':
                    price *= 0.8;
                    break;
                case 'DKK':
                    price *= 0.15;
                    break;
                case 'EUR':
                    price *= 1.11;
                    break;
                case 'HKD':
                    price *= 0.13;
                    break;
                case 'IDR':
                    price *= 0.75;
                    break;
                case 'ILS':
                    price *= 0.31;
                    break;
                case 'MYR':
                    price *= 0.24;
                    break;
                case 'MXN':
                    price *= 0.05;
                    break;
                case 'MAD':
                    price *= 0.10;
                    break;
                case 'NZD':
                    price *= 0.69;
                    break;
                case 'NOK':
                    price *= 0.12;
                    break;
                case 'PHP':
                    price *= 0.019;
                    break;
                case 'SGD':
                    price *= 0.74;
                    break;
                case 'ZAR':
                    price *= 0.069;
                    break;
                case 'SEK':
                    price *= 0.11;
                    break;
                case 'CHF':
                    price *= 1.07;
                    break;
                case 'TRY':
                    price *= 0.069;
                    break;
                case 'VND':
                    price *= 0.000044;
                    break;
            }
            return res.json({
                name: response.data.title,
                description: response.data.description,
                quantity: response.data.quantity,
                url: response.data.url,
                price: price
            })
        })
        .catch(function (error) {
            console.log(error);
        })
    });

    app.get('/getListingImages', (req, res) => {
        axios.get(`https://openapi.etsy.com/v3/application/listings/${req.query.listingId}/images`, {headers: {'x-api-key': 'h7ctibmsc63qthr5ozej14i4'}})
        .then(function (response) {
            return res.json({
                images: response.data.results,
            })
        })
        .catch(function (error) {
            console.log(error);
        })
    });
}