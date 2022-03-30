import React, {Component} from 'react';
import { BsArrowRightSquare, BsArrowLeftSquare} from 'react-icons/bs'
import './CatalogItem.css'

class CatalogItem extends Component{  
    state = {
        loading: true,
        name: '',
        quantity: 0,
        price: 0,
        description: '',
        url: '',
        images: [],
        currentimg: 0
    }

    componentDidMount(){
        this.getListing();
    }

    getListing = () => {
        fetch(`/getListing?` + new URLSearchParams({
            listingId: this.props.listingId,
          }))
        .then(response => response.json())
        .then(response => {
          let name = response.name
          let cutoff = 30;
          if(name.length>cutoff){
            for(cutoff; name.charAt(cutoff)!==' ' && name.charAt(cutoff)!=='\n' && cutoff!==name.length; cutoff++);
            
            if(cutoff!==name.length){
                name = name.substring(0,cutoff)+'...';
            }
          }
          let description = response.description
          cutoff = 150;
          if(description.length>cutoff){
            for(cutoff; description.charAt(cutoff)!==' ' && description.charAt(cutoff)!=='\n' && cutoff!==description.length; cutoff++);
            if(cutoff!==description.length){
                description = description.substring(0,cutoff)+'...';
            }
          }
          this.setState({
            name: name,
            quantity: response.quantity,
            price: response.price,
            description: description,
            url: response.url
          })
        })
        .catch(err => console.error(err))
        fetch(`/getListingImages?` + new URLSearchParams({
            listingId: this.props.listingId,
          }))
        .then(response => response.json())
        .then(response => {
          this.setState({
            images: response.images,
            loading: false
          })
        })
        .catch(err => console.error(err))
    }

    nextImage = () => {
        this.setState({
            currentimg: this.state.currentimg === this.state.images.length -1 ? 0 : this.state.currentimg + 1
        })
    }
    
    prevImage = () => {
        this.setState({
            currentimg: this.state.currentimg === 0 ? this.state.images.length - 1 : this.state.currentimg - 1
        })
    }

    render() {
        return (
            <div className='CatalogItem-Body'>
                <div className='CatalogItem-Text'>
                  <a href={this.state.url} target='_blank'><h1 className='CatalogItem-Name'>{this.state.name}</h1></a>
                  <div className='CatalogItem-Info'>
                    <p>Points: {this.state.price}</p>
                    {this.state.quantity < 10 ? <p style={{color: 'red'}}>Only {this.state.quantity} in stock!</p> : <p>{this.state.quantity} in stock</p>}
                  </div>
                  <p>{this.state.description}</p>
                </div> 
                <div className='CatalogItem-ImgSide'>
                    <div className='CatalogItem-ImgContainer'>
                        {!this.state.loading && <img className='CatalogItem-Img' src={this.state.images[this.state.currentimg].url_fullxfull} alt="Item Image"></img>}
                    </div>
                    <div>
                        <BsArrowLeftSquare className='CatalogItem-Arrow' onClick={() => this.prevImage()}></BsArrowLeftSquare>
                        <BsArrowRightSquare className='CatalogItem-Arrow' onClick={() => this.nextImage()}></BsArrowRightSquare>
                    </div>
                </div>
            </div>
        );
    }
  }

export default CatalogItem
