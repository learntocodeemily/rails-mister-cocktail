class Cocktail < ApplicationRecord
  has_many :doses, dependent: :delete_all
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
end
