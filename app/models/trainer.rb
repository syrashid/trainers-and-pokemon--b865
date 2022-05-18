class Trainer < ApplicationRecord
  has_many :pokemons, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
