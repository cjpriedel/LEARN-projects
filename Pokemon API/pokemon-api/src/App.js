import './App.css';
import React, {Component} from 'react'
  


export default class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      ipPayload: "",
      imageURL: "",
      pokemonType: "",
      identification: ""
    }
  }

getPokemon = () => {
  let input = prompt()
  fetch("https://pokeapi.co/api/v2/pokemon/" + input)
  .then(response => (response.json())
  .then(payload => this.setState({ipPayload: payload, imageURL: payload.sprites.other.dream_world.front_default, pokemonType: payload.types[0].type.name, identification: payload.id })))
}
  render() {
    console.log(this.state.ipPayload)
  return (
    <>
    <div id="container">
    <h1>Return a Pokemon</h1>
    <button id='pdbutton' onClick={this.getPokemon}>Click here for Pokemon</button>
    <img id='pdex'src='./pokedex.png' />
 
    {/* errors outputing location */}
    {/* <p id="pokemonlocation">{this.state.location.location_area_encounters}</p> */}

    <p id="pokemonid">{this.state.identification}</p>

    <p id="pokemonname">{this.state.ipPayload.name}</p>
    
    
    <p id="pokemonetype">{this.state.pokemonType}</p>

    <p id="pokemoneheight">{this.state.ipPayload.height}' tall</p>

    <img id="pokemonimage" src={this.state.imageURL}/>

    </div>
    </>
  );
}
}

 