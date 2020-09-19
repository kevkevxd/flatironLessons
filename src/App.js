import React from 'react';
import './App.css';

import Header from './components/Header'
import ToyForm from './components/ToyForm'
import ToyContainer from './components/ToyContainer'

// import data from './data'


class App extends React.Component{

  state = {
    display: false,
    toyArray: []
  }
  
  createHandler = (obj) => {
    fetch("http://localhost:3000/toys", {
    method: "POST",
      headers: {
        "content-type": "application/json",
        accepts: "application/json"
      },
      body: JSON.stringify(obj)
    })
      .then(res=>res.json())
      .then(newObj => this.setState({ toyArray: [newObj, ...this.state.toyArray]}))
}

  likeClicker = (toy) => {
    fetch(`http://localhost:3000/toys/${toy.id}`, {
    method: "PATCH",
      headers: {
        "content-type": "application/json",
        accepts: "application/json"
      },
      body: JSON.stringify({ ...toy, likes: parseInt(toy.likes) + 1})
    })
      .then(res=>res.json())
      .then(updatedToy => {
        const newToyArray = this.state.toyArray
        const index = newToyArray.findIndex(toy => toy.id === updatedToy.id)
        newToyArray[index] = updatedToy
        console.log(newToyArray)
        this.setState({toyArray: newToyArray})
      })
  }
  componentDidMount() {
    console.log("component did mount")
    fetch("http://localhost:3000/toys")
    .then(res => res.json())
    .then(data => this.setState({toyArray: data}))  //setting api data to state
  }

  componentDidUpdate(prevProps, prevState) {
    if (prevState !== this.state) {
      // patch request with updated likes (this.state)
    }
  }

  handleClick = () => {
    let newBoolean = !this.state.display
    this.setState({
      display: newBoolean
    })
  }

  render(){
    return (
      <>
        <Header/>
        { this.state.display
            ?
          <ToyForm submitHandler={this.createHandler}/>
            :
          null
        }
        <div className="buttonContainer">
          <button onClick={this.handleClick}> Add a Toy </button>
        </div>
        <ToyContainer toys={this.state.toyArray} likeHandler={this.likeClicker}/>
      </>
    );
  }

}

export default App;
