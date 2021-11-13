require "test_helper"

class Api::V1::PokemonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemon = pokemons(:one)
  end

  test "should get index" do
    get api_v1_pokemons_url, as: :json
    assert_response :success
  end

  test "should create pokemon" do
    assert_difference('Pokemon.count') do
      post api_v1_pokemons_url, params: { pokemon: { HP: @pokemon.HP, attack: @pokemon.attack, defense: @pokemon.defense, generation: @pokemon.generation, lengendary: @pokemon.lengendary, name: @pokemon.name, speed: @pokemon.speed, speedAttack: @pokemon.speedAttack, speedDefense: @pokemon.speedDefense, type1: @pokemon.type1, type2: @pokemon.type2 } }, as: :json
    end

    assert_response 201
  end

  test "should show pokemon" do
    get api_v1_pokemons_url(@pokemon), as: :json
    assert_response :success
  end

  test "should update pokemon" do
    patch api_v1_pokemons_url(@pokemon), params: { pokemon: { HP: @pokemon.HP, attack: @pokemon.attack, defense: @pokemon.defense, generation: @pokemon.generation, lengendary: @pokemon.lengendary, name: @pokemon.name, speed: @pokemon.speed, speedAttack: @pokemon.speedAttack, speedDefense: @pokemon.speedDefense, type1: @pokemon.type1, type2: @pokemon.type2 } }, as: :json
    assert_response 200
  end

  test "should destroy pokemon" do
    assert_difference('Pokemon.count', -1) do
      delete api_v1_pokemons_url(@pokemon), as: :json
    end

    assert_response 204
  end
end
