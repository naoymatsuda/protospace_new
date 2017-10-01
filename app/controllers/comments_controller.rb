class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = Comment.new
    @comments = Comment.where(prototype_id: params[:prototype_id])
    @new_comment = current_user.comments.create(text: comment_params, prototype_id: params[:prototype_id])
    if @new_comment.save
      redirect_to root_path, notice: 'メッセージを送信しました'
    else
      flash[:alert] = 'メッセージの送信に失敗しました'
      redirect_to root_path
    end
  end

  def comment_params
    params.require(:comment).permit(:text)[:text]
  end
end
