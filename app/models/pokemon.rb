class Pokemon < ApplicationRecord
  belongs_to :trainer

  validates :name, presence: true
  validates :image_url, presence: true

  has_many :skills, dependent: :destroy
  has_many :moves, through: :skills
end
