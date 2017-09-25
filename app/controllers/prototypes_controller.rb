class PrototypesController < ApplicationController

  def index
  end

  def new
  	@prototype = Prototype.new
  	@prototype.images.build
  end

  def create
  	@prototypes = Prototype.new(prototype_params)
  	if @prototypes.save
  	  redirect_to root_path, notice: 'Your post is success'
  	else
  	  render action: :new
  	  redirect_to new_prototype_path, alert: 'Your post is unsuccessful'
    end
  end

  def prototype_params
  	params.require(:prototype).permit(:title, :catch_copy, :concept, images_attributes: [:id, :status, :image]).merge(user_id: current_user.id)
  end
end
