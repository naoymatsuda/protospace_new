class Prototypes::LatestsController < ApplicationController
  def index
    @prototypes = Prototype.includes(:images).order('created_at DESC')
    render template: "prototypes/index"
  end
end
