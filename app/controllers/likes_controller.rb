class LikesController < ApplicationController
  before_action :like_set

  def create
    @like = current_user.likes.create(prototype_id: params[:prototype_id])
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    render json: [ :like => @like ]
  end

  private
  def like_set
    @prototype = Prototype.find(params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
    @find_like = Like.find_by(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
