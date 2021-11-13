import React from 'react'
import Pokemon from '../pokemon/pokemon'

const Pokemons = ({pokemons}) => {
    
    return (
        <ul className="list-group mb-4">
            {
                pokemons.map(p => <Pokemon pokemon={p} key={p.id}/>)
            }
        </ul>
    )
}

export default Pokemons