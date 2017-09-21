class Prototype < ActiveRecord::Base

  has_many :images
  has_many :likes
  has_many :comments

end
