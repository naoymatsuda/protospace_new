class Image < ActiveRecord::Base
  validates :image, presence: true

  belongs_to :prototype, required: true

  mount_uploader :image, ImagesUploader

end
