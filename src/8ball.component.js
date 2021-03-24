import React from 'react'
import './8ball.styles.sass'

class MagicEightBall extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            userInput: '',
            msg: ''
        }
        this.ask = this.ask.bind(this);
        this.handleChange = this.handleChange.bind(this);
    }

    ask() {
        if (this.state.userInput) {
            let headers = new Headers();
            headers.append('Access-Control-Allow-Origin', '*');

            const myRequest = new Request('http://localhost:8000/api/game/play/1/666', {
                mode: 'cors',
                method: 'GET',
            });

            fetch(myRequest)
                .then(response => {
                    fetch(response.url).then(response => response.json()).then(data => {
                        console.log(data['game_reward']['title']);
                        this.setState({
                            msg: data['game_reward']['title'],
                            userInput: ''
                        })
                    }).catch(error => console.error(error));
                }).catch(error => console.error(error));
        }
    }

    handleChange(event) {
        this.setState({
            userInput: event.target.value
        });
    }

    render() {
        return (
            <div>

                <div className="question-container">
                    <input
                        type="text"
                        value={this.state.userInput}
                        onChange={this.handleChange}
                    />
                    <button onClick={this.ask}>
                        Ask the Magic Eight Ball!
                    </button>
                </div>

                <div className="ball-container">
                    <div className="ball-black-outer">
                        <div className="ball-white-inner">
                            <div>
                                {(this.state.msg !== '') ?
                                    this.state.msg
                                    :
                                    <div className='eight'>8</div>
                                }
                            </div>
                        </div>
                    </div>
                    <div className="ball-shadow"></div>
                </div>

            </div>
        );
    }
}

export default MagicEightBall;
