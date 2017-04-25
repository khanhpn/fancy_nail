class Picture < ApplicationRecord
  belongs_to :product
  mount_uploader :picture, AvatarUploader
end
