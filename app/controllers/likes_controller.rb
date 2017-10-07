class LikesController < ApplicationController
  before_action :set_like

  def create
    @like = current_user.likes.create(prototype_id: params[:prototype_id])
  end

  def destroy
    binding.pry
    @like = Like.find(params[:id])
    @like.destroy
    # render json: @like
  end

  private
  def set_like
    @prototype = Prototype.find(params[:prototype_id])
  end
end
