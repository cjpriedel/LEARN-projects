import './App.css';
import React, {Component} from 'react'
import pokedex from './'


export default class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      ipPayload: "",
      imageURL: ""
    }
  }

getPokemon = () => {
  let input = prompt()
  fetch("https://pokeapi.co/api/v2/pokemon/" + input)
  .then(response => (response.json())
  .then(payload => this.setState({ipPayload: payload, imageURL: payload.sprites.other.dream_world.front_default})))
}
  render() {
    console.log(this.state.ipPayload)
  return (
    <>
    <div id="container">
    <h1>Return a Pokemon</h1>
    <button onClick={this.getPokemon}>Click here for Pokemon</button>
    <img src='./pokedex.gif' />
    <p>Your Pokemon is: {this.state.ipPayload.name}
    </p>
    <p>{this.state.ipPayload.height}</p>
    <img src={this.state.imageURL}></img>
    </div>
    </>
  );
}
}

 