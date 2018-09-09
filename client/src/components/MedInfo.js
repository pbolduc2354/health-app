import React, { Component } from 'react';
import axios from 'axios';

class MedInfo extends Component {
    constructor(props){
        super(props)
        this.state = {
            userInfos: []
        }
    }

    componentDidMount() {
        axios
            .get('http://localhost:3001/api/v1/users.json')
            .then(response => {
                console.log(response)
                this.setState({
                    userInfos: response.data
                })
                console.log(this.state.userInfos)
            })
            .catch(error => console.log(error))
    }

    render() {
        return (
            <div className="Med-info">
                {this.state.userInfos.map( userInfo => {
                    return (
                        <div className="single-user" key={userInfo.id}>
                            <h4>{userInfo.first_name} {userInfo.last_name} </h4>
                            <p>{userInfo.note}</p>
                        </div>
                    )
                })}
            </div>
        )
    }
}

export default MedInfo;