class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :type1
      t.integer :type2
      t.integer :HP
      t.integer :attack
      t.integer :defense
      t.integer :speedAttack
      t.integer :speedDefense
      t.integer :speed
      t.integer :generation
      t.boolean :lengendary

      t.timestamps
    end
  end
end
