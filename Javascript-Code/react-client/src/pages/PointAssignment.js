import React, {Component} from 'react';
import SponsorLayout from '../components/SponsorLayout';
import './PointAssignment.css'

class PointAssignment extends Component{
  state = {
    add: true,
    value: 0,
    driver: '',
    comment: '',
    drivers: []
  };

  componentDidMount() {
    this.getDrivers();
  }

  getDrivers = () => {
    fetch('/getDrivers')
    .then(response => response.json())
    .then(response => this.setState({drivers: response.drivers}))
    .catch(err => console.error(err))
  }

  handleChange = (event) => {
    const target = event.target;
    const name = target.name
    const value = target.value
    
    this.setState({
      [name]: value
    });

  };

  selectAdd = () => {
    this.setState({
      add: true
    });
  };

  selectSub = () => {
    this.setState({
      add: false
    });
  };

  submit = (event) => {
    event.preventDefault();
    var payload = {
      add: this.state.add,
      value: this.state.value,
      driver: this.state.driver,
      comment: this.state.comment,
    };
    fetch('/point-assignment', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload)
    })
    .then(response => {
      if( response.status === 200 ) {
        this.setState({
          add: true,
          value: 0,
          driver: '',
          comment: ''
        });
      }
    })
    .catch((error) => {
      console.error('Error', error);
    });
  }
  render() {
    return (
      <SponsorLayout>
        <div className='PointAssignPage'>
          <form onSubmit={this.submit} className='point-form'>
            <div className='form-item'>
              <label htmlFor="addsub">Add or Subtract Points?</label>
                <div className='point-addbuttons' >
                  <div className='point-addsub' style={{backgroundColor: this.state.add ? 'rgb(0, 200, 0)' : 'rgb(223, 223, 223)'}} onClick={this.selectAdd}>
                    <div>+</div>
                  </div>
                  <div className='point-addsub' style={{backgroundColor: !this.state.add ? 'rgb(200, 0, 0)' : 'rgb(223, 223, 223)'}} onClick={this.selectSub}>
                    <div>-</div>
                  </div>
                </div>
            </div>

            <div className='form-item'>
              <label htmlFor="value">Point Value</label>
              <input 
                type="number" 
                id="value" 
                name="value"
                placeholder={0} 
                value={this.state.value}
                onChange={this.handleChange}
                min={1}
              />
            </div>

            <div className='form-item'>
            <label htmlFor="driver">Driver</label>
              <input 
                list='driver-list' 
                name='driver' 
                id='driver'
                value={this.state.driver}
                onChange={this.handleChange}
                required
              />
              <datalist id="driver-list">
                  {this.state.drivers.map((d,i) => 
                    <option value={d} key={i}/>
                  )}
              </datalist>
            </div>

            <div className='form-item'>
              <label htmlFor="driver">Comment</label>
              <textarea
                cols="40" 
                rows = "7"
                id="comment" 
                name="comment" 
                placeholder="Additional Comments"
                value={this.state.comment}
                onChange={this.handleChange}
                required
                minLength={1}
                maxLength={100}
              />
            </div>
            <div className='form-item'>
              <label>Suggested Comments</label>
                <button className='comment-suggest' type="button" onClick={()=>this.setState({comment: 'Great Driving!'})}>Great Driving!</button>
                <button className='comment-suggest' type="button" onClick={()=>this.setState({comment: 'Bad Driving!'})}>Bad Driving!</button>
                <button className='comment-suggest' type="button" onClick={()=>this.setState({comment: 'Free Points!'})}>Free Points!</button>
            </div>
            <input className="point-submit" type="submit" value="Send Points"/>
          </form>
        </div>
      </SponsorLayout>
    );
  }
}

export default PointAssignment;
