class AddTypesToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :type1, :integer, default: 0
    add_column :pokemons, :type2, :integer, default: 0
  end
end
