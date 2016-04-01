class RecipeIngredient < ActiveRecord::Base
  belongs_to :list
  belongs_to :ingredient
end