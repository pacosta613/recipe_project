class List < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates_presence_of :name

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.values.each do |ingredient|
      
      if !(ingredient["description"] == "")
        self.ingredients << Ingredient.find_or_create_by(description: ingredient)
      end
    end
  end

  def comments_attributes=(comments_attributes)
    comments_attributes.values.each do |comment|

      if !(comment["content"] == "")
        self.ingredients << Ingredient.find_or_create_by(content: comment)
      end
    end
  end
end 