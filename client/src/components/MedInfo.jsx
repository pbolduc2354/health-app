import React, { Component } from 'react';
import axios from 'axios';

import Patients from "./Patients"

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
                <Patients userInfos={this.state.userInfos} />
            </div>
        )
    }
}

export default MedInfo;