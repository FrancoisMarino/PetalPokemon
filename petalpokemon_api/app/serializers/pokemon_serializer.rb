class PokemonSerializer < ActiveModel::Serializer
  include PokemonTypes

  attributes :id, :name, :HP, :attack, :defense, :speedAttack, :speedDefense, :speed, :total, :generation, :lengendary, :type1, :type2

  def type1
    TYPES.key(object.type1)
  end
  
  def type2
    TYPES.key(object.type2)
  end

  def total
    object.HP + object.attack + object.defense + object.speedAttack + object.speedDefense + object.speed
  end
end
