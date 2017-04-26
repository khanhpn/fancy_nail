class Picture < ApplicationRecord
  belongs_to :product

  mount_uploader :url_picture, UrlPictureUploader
end
