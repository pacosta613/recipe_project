class CommentsController < ApplicationController
  
  def new
  end

  def create
    binding.pry
    @list = List.find_by(params[:list_id])
    @comment = @list.comments.create(comment_params)

    redirect_to lists_path(@list)
  end

  def show
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :user_id, :list_id)
    end
end