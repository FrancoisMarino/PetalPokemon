import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Spinner from './components/spinner/spinner';
import Pokemons from './components/pokemons/pokemons';
import Pagination from './components/pagination/pagination';

const App = () => {
  const [pokemons, setPokemons] = useState([]);
  const [currentPokemons, setCurrentPokemons] = useState([]);
  const [loading, setLoading] = useState(false);
  const [pokPerPage] = useState(10);

  useEffect(() => {
    const fetchPokemons = async () => {
      setLoading(true);
      const res = await axios.get(`${process.env.REACT_APP_API_URL}/v${process.env.REACT_APP_API_VERSION}/pokemons`);
      setPokemons(res.data);
      setLoading(false);
    }

    fetchPokemons();
  }, [])

  useEffect(() => {
    setCurrentPokemons(pokemons.slice(0, pokPerPage))
  }, [pokemons])

  const paginate = (number) => {
    const newOffset = (number * pokPerPage) % pokemons.length;
    const endOffset = newOffset + pokPerPage;

    console.log(number, newOffset, endOffset)
    setCurrentPokemons(pokemons.slice(newOffset, endOffset));
  }

  return (
    <div className="Container">
      <h1>Here are the Pokemons!</h1>
      {
        loading ? 
        <Spinner/> :
        <>
          <Pokemons pokemons={currentPokemons}/>
          <Pagination 
            itemsPerPage={pokPerPage} 
            totalItem={pokemons.length} 
            paginate={paginate}/>
        </>        
      }
    </div>
  );
}

export default App;
