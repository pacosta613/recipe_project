class RatingsController < ApplicationController

  def new
  end

  def create
    #binding.pry
    @list = List.find_by(id: rating_params[:list_id])
    @rating = @list.ratings.create(rating_params)

    redirect_to lists_path(@list)
  end

  def show
  end

  private

  def rating_params
    params.require(:rating).permit(:star_rating, :list_id, :user_id)
  end
end