class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
  # has_attachment :photo
  accepts_nested_attributes_for :doses

  mount_uploader :photo, PhotoUploader

  def doses_for_form
    collection = doses.where(cocktail_id: id)
    collection.any? ? collection : doses.build
  end
end
