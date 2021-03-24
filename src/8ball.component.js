import React from 'react'
import { v4 as uuidv4 } from 'uuid';
import './8ball.styles.sass'

class MagicEightBall extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            msg: ''
        }
        this.ask = this.ask.bind(this);
    }

    ask() {
        let headers = new Headers();
        headers.append('Access-Control-Allow-Origin', '*');

        let id = uuidv4();

        const myRequest = new Request(`http://0.0.0.0:80/api/game/play/1/${id}`, {
            mode: 'cors',
            method: 'GET',
        });

        fetch(myRequest)
            .then(response => response.json())
            .then(data => {
                console.log(data);
                this.setState({
                    msg: 'has_won: ' + data['has_won'],
                })
            }).catch(error => console.error(error));
    }

    render() {
        return (
            <div>

                <div className="question-container">
                    <button onClick={this.ask}>
                        Play Game!
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
