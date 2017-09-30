class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = Comment.new
    @comments = Comment.where(prototype_id: params[:prototype_id])
    @new_comment = current_user.comments.create(text: comment_params, prototype_id: params[:prototype_id])
  end

  def comment_params
    params.require(:comment).permit(:text)[:text]
  end
end
