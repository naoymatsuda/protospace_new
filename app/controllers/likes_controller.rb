class LikesController < ApplicationController
  before_action :set_prototype

  def create
    @like = current_user.likes.create(prototype_id: params[:prototype_id])
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    render action: "../likes/create"
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end
end
