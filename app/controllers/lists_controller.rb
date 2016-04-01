class ListsController < ApplicationController
  
  def index
    #binding.pry
    @lists = List.all
  end

  def show
    find_recipe
    @comment = Comment.new
  end

  def new
    @lists = List.all
    @list = List.new
    5.times {@list.ingredients.build}
  end
  
  def create
    @list = List.create(list_params)
    #binding.pry
    # list_params = {id:somethign, name:something, ingredients_attributes:{description:'sauce'}}
    @list.user = current_user
    @list.save

    redirect_to lists_path(@list)
  end

  def update
    find_recipe
    @list.update(list_params)
    @list.save

    redirect_to list_path(@list)
  end

  def edit
    find_recipe
  end

  def destroy
    find_recipe
    @list.destroy
    
    redirect_to root_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :user_id, :content, ingredients_attributes: :description, comments_attributes: :content)
  end

  def find_recipe
    #binding.pry
    @list = List.find(params[:id])
  end

end