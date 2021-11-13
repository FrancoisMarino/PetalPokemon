require 'csv'
include PokemonTypes

def getTypeInteger(type)
    TYPES[type]
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'pokemon.csv'))

csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    p = Pokemon.new
    p.name = row['Name']
    p.type1 = getTypeInteger(row['Type 1'])
    p.type2 = getTypeInteger(row['Type 2'])
    p.HP = row['HP']
    p.attack = row['Attack']
    p.defense = row['Defense']
    p.speedAttack = row['Sp. Atk']
    p.speedDefense = row['Sp. Def']
    p.speed = row['Speed']
    p.generation = row['Generation']
    p.lengendary = row['Legendary']
    p.save
end