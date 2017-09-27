class Image < ActiveRecord::Base

  belongs_to :prototype

  mount_uploader :image, ImagesUploader

  enum status: { main: 0, sub: 1 }
end
