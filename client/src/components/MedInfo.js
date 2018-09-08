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
            })
            .catch(error => console.log(error))
    }

    render() {
        return (
            <div className="Med-info">
                Medical_informations
            </div>
        )
    }
}

export default MedInfo;