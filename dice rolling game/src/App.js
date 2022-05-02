import { Component } from "react";
import side1 from './components/images/side1.png'
import side2 from './components/images/side2.png'
import side3 from './components/images/side3.png'
import side4 from './components/images/side4.png'
import side5 from './components/images/side5.png'
import side6 from './components/images/side6.png'
import diceHero from './components/images/diceHero.png'
import Dice from './components/Dice'
import RestartButton from "./components/RestartButton"
import Log from "./components/Log";

export default class App extends Component {
    constructor(props) {
        super(props)
        this.state = {
            diceRollImages: [side1, side2, side3, side4, side5, side6],
            currentRollImage: diceHero,
            diceRollHistory: []
        }
    }

    handleDiceRoll = () => {
        let { diceRollImages, diceRollHistory } = this.state
        let diceRoll = Math.floor(Math.random() * diceRollImages.length)
        let newDiceRoll = diceRollImages[diceRoll]
        this.setState({ currentRollImage: newDiceRoll, diceRollHistory: [...diceRollHistory, diceRoll + 1] })
    }

    handleRestartClickEvent = () => {
        this.setState({
            diceRollImages: [side1, side2, side3, side4, side5, side6],
            currentRollImage: diceHero,
            diceRollHistory: []
        })
    }

    render() {
        const { currentRollImage, diceRollHistory } = this.state
        return (
            <div className="game-container">
                <h1>Dice Roller</h1>
                <div className="board-container">
                    <Dice
                        handleDiceRoll={this.handleDiceRoll}
                        currentRollImage={currentRollImage}
                    />
                    <RestartButton restartGame={this.handleRestartClickEvent} />
                    <Log diceLog={diceRollHistory} />
                </div>
            </div>

        )
    }
}
