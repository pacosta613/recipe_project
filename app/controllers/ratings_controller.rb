class RatingsController < ApplicationController

  def index
    @list = List.find(params[:list_id])
    @ratings = @list.ratings
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def rating_params
  end
end