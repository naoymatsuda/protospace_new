class Prototype < ActiveRecord::Base
  validates :image, presence: true
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true

  has_many :images
  has_many :likes
  has_many :comments

  belongs_to :user

end
