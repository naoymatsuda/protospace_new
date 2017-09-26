class PrototypesController < ApplicationController

  def index
  end

  def new
  	@prototype = Prototype.new
  	@images = Image.new
  end

  def create
  	@prototype = Prototype.new(prototype_params)
  	@images = Image.new(image_params)
  	if @prototype.save && @images.save
  	  redirect_to root_path, notice: ' Post was successful '
  	else
  	  redirect_to new_prototype_path, alert: ' Post was unsuccessful '
    end
  end

  def prototype_params
  	params.require(:prototype).permit(:title, :catch_copy, :concept).merge(user_id: current_user.id)
  end

  def image_params
  	params.require(:image).permit(:image, :status)
  end

end
