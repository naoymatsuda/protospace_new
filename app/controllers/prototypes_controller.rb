class PrototypesController < ApplicationController

  def index
  end

  def new
  	@prototype = Prototype.new
  	@prototype.images.build
  end

  def create
  	@prototype = Prototype.new(prototype_params)
  	binding.pry
  	if @prototype.save
  	  redirect_to root_path, notice: ' Post was successful '
  	else
  	  redirect_to new_prototype_path, alert: ' Post was unsuccessful '
    end
  end

  def prototype_params
  	params.require(:prototype).permit(:title, :catch_copy, :concept, images_attributes: [:image, :status, :id]).merge(user_id: current_user.id)
  end

end
