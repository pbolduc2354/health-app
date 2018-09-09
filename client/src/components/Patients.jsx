import React, { Component } from 'react';

class Patients extends Component {
    
    render() {

        const userInfos = this.props.userInfos

        const listOfUser = userInfos.map( userInfo => {
            console.log(userInfo)
                return(
                    <div className="single-user" key={userInfo.id}>
                        <h4>{userInfo.first_name} {userInfo.last_name} </h4>
                        <p>{userInfo.note}</p>
                    </div>
                )
        })

        return (
            <main className="users">
                {listOfUser}
            </main>
        )
    }
}

export default Patients; 