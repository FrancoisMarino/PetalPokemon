# PetalPokemon

## Backend (Ruby on rails)
Open the project inside petalpokemon_api folder
run the following commands:
>rails db:migrate

>rails db:seed

The CVS file will be read and use to populate the database 

You can now run 
>rails s

## Routes
- Get all the pokemons: GET http://localhost:3000/api/v1/pokemons
- Get a pokemon by it's id: GET http://localhost:3000/api/v1/pokemons/{pokemon_id}
- Create a new pokemon : POST http://localhost:3000/api/v1/pokemons
Json example:
{"name":"NewPokemon","HP":45,"attack":49,"defense":49,"speedAttack":65,"speedDefense":65,"speed":45,"generation":1,"lengendary":true,"type1":5,"type2":2}
- Update a pokemon : PUT http://localhost:3000/api/v1/pokemons/{pokemon_id}
Json example
{"name":"newName"}
- Delete a pokemon: DELETE http://localhost:3000/api/v1/pokemons/{pokemon_id}

## Frontend (react)
Open the project petalpokemon_web and run 
>npm start
