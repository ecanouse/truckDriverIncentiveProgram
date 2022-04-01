import React, {Component} from 'react';
import { BsArrowRightSquare, BsArrowLeftSquare} from 'react-icons/bs'
import './CatalogItem.css'

class CatalogItem extends Component{  
    state = {
        loading: true,
        name: '',
        // quantity: 0,
        // price: 0,
        description: '',
        // url: '',
        images: [],
        currentimg: 0
    }

    componentWillReceiveProps(nextProps) {
        this.getListing(nextProps.item)
    }

    componentDidMount(){
        this.getListing(this.props.item);
    }

    getListing = (item) => {
        let name = item.name
        let cutoff = 30;
        if(name.length>cutoff){
            for(cutoff; name.charAt(cutoff)!==' ' && name.charAt(cutoff)!=='\n' && cutoff!==name.length; cutoff++);
            if(cutoff!==name.length){
                name = name.substring(0,cutoff)+'...';
            }
        }
        let description = item.description
        cutoff = 150;
        if(description.length>cutoff){
            for(cutoff; description.charAt(cutoff)!==' ' && description.charAt(cutoff)!=='\n' && cutoff!==description.length; cutoff++);
            if(cutoff!==description.length){
                description = description.substring(0,cutoff)+'...';
            }
        }
        this.setState({
            name: name,
            description: description,
        })
        fetch(`/getListingImages?` + new URLSearchParams({
            listingId: item.listingId,
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

    onClick = () => {
        this.props.buttonClick(this.props.item.listingId, this.props.item.quantity, this.state.name, this.props.item.price*this.props.ppd);
    }

    render() {
        return (
            <div className='CatalogItem-Body'>
                <div className='CatalogItem-Text'>
                  <a href={this.props.item.url} target='_blank'><h1 className='CatalogItem-Name'>{this.state.name}</h1></a>
                  <div className='CatalogItem-Info'>
                    <p>Points: {parseInt(this.props.item.price*this.props.ppd)}</p>
                    {this.props.item.quantity < 10 ? <p style={{color: 'red'}}>Only {this.props.item.quantity} in stock!</p> : <p>{this.props.item.quantity} in stock</p>}
                  </div>
                  <p>{this.state.description}</p>
                  <button className='CatalogItem-Button' onClick={this.onClick}>Add to Cart</button>
                </div> 
                <div className='CatalogItem-ImgSide'>
                    <div className='CatalogItem-ImgContainer'>
                        {!this.state.loading && <img className='CatalogItem-Img' src={this.state.images[this.state.currentimg]} alt="Item Image"></img>}
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
