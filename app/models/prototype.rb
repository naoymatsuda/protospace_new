class Prototype < ActiveRecord::Base
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true

  has_many :images
  has_many :likes
  has_many :comments

  belongs_to :user

  has_one :main_image, -> { where(status: 0) }, class_name: 'Image'

  accepts_nested_attributes_for :images

  acts_as_taggable
end
