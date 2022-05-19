class Move < ApplicationRecord
  has_many :skills
  has_many :pokemons, through: :skills
end
