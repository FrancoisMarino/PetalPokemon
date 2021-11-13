import React from "react";

const Pokemon = ({pokemon}) => {
    const { name, lengendary, HP, attack, defense,type1} = pokemon;

    return (
        <li className="list-group-item">
            <div className="row">
                <h5>
                    <span>{`${name} (${type1})`}</span>
                    {
                        lengendary && <span className="ml-2 text-danger">Lengendary!</span>
                    }
                </h5>
                <div className="ml-2">
                    <span className="ml-1">HP: {HP}</span>
                    <span className="ml-1">Attack: {attack}</span>
                    <span className="ml-1">Defense: {defense}</span>
                </div> 
            </div> 
        </li>
    );
}

export default Pokemon