class Pokemon < ApplicationRecord
  belongs_to :trainer

  validates :name, presence: true
  validates :image_url, presence: true
end
