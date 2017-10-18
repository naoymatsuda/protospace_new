class TagsController < ApplicationController
  def index
    @tags = Prototype.tag_counts_on(:tags).order('count DESC')
  end

  def show
    @tag = ActsAsTaggableOn::Tag.find_by(name: params[:id])
    @prototype = Prototype.tagged_with(@tag)
  end
end