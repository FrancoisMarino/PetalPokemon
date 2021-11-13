class Pokemon < ApplicationRecord
    enum type: {
        "NotSet" => 0,
        "Grass" => 1,
        "Fire" => 2,
        "Water" => 3,
        "Bug" => 4,
        "Normal" => 5,
        "Poison" => 6,
        "Electric" => 7,
        "Ground" => 8,
        "Fairy" => 9,
        "Fighting" => 10,
        "Psychic" => 11,
        "Rock" => 12,
        "Ghost" => 13,
        "Ice" => 14,
        "Dragon" => 15,
        "Dark" => 16,
        "Steel" => 17,
        "Flying" => 18
    }
end
