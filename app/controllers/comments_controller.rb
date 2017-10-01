class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = Comment.new
    @comments = Comment.where(prototype_id: params[:prototype_id])
    @new_comment = current_user.comments.create(text: comment_params, prototype_id: params[:prototype_id])
    @new_comment = current_user.comments.build(text: comment_params, prototype_id: params[:prototype_id])
    (render json: { message: 'メッセージの送信に失敗しました' } and return) unless @new_comment.save
  end

  def comment_params
    params.require(:comment).permit(:text)[:text]
  end
end
