class Image < ActiveRecord::Base
  validates :image, presence: true

  belongs_to :prototype, required: true

end
