class Skill < ApplicationRecord
  belongs_to :move
  belongs_to :pokemon

  validates :move, uniqueness: { scope: :pokemon, message: 'already learned!' }
end
