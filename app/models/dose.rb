class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: [:cocktail, :ingredient] }
  validates :cocktail, presence: true
end
