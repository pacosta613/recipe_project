class IngredientsController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @ingredient = @list.ingredients.build
  end

  def create
    @list = List.find(params[:list_id])
    @ingredient = @list.ingredients.create(ingredient_params)

    redirect_to list_path(@list)
  end

  def show
  end

  def update
    find_ingredients
    @ingredient.update(@ingredient_params)

    redirect_to ingredient_path(@ingredient)
  end

  def destroy
    find_ingredients
    @ingredient.destroy
    
    redirect_to root_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:description, :list_id)
  end

  def find_ingredients
    @ingredient = Ingredient.find(params[:id])
  end

end