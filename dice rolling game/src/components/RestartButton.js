import React, { Component } from 'react'

export default class RestartButton extends Component {
    render() {
        return (
            <div className="restart-container">
                <button onClick={this.props.restartGame}>Restart Game</button>
            </div>
        )
    }
}
