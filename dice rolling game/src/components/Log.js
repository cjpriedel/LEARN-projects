import React, { Component } from 'react'

export default class Log extends Component {
  render() {
    return (
      <>
        <h2>Previous rolls:</h2>
        <div className="log-container">
          {this.props.diceLog.map((value, index) => {
            return <h3 key={index}>{value + ", "}</h3>
          })}
        </div>

      </>
    )
  }
}
