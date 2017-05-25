class Video < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  paginates_per 10
  # mount_uploader :url_video, UrlVideoUploader
end

