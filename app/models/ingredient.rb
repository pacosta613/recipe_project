class Ingredient < ActiveRecord::Base
  belongs_to :user
  has_many :recipe_ingredients
  has_many :lists, through: :recipe_ingredients

  validates :description, presence: true
end