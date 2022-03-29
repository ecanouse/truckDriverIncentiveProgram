import React, {Component} from 'react';
import './CatalogItem.css'

class CatalogItem extends Component{  
    state = {
        name: '',
        quantity: 0,
        price: 0,
        description: '',
        images: []
    }

    componentDidMount(){
        this.getListing();
    }

    getListing = () => {
        console.log('HELLO')

        fetch(`/getListing`)
        .then(response => response.json())
        .then(response => {
          console.log(response.name)
        })
        .catch(err => console.error(err))
    }
    
    render() {
        return (
              <div className='CatalogItem-Body'>

              </div> 
        );
    }
  }

export default CatalogItem
