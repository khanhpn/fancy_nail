class Advetisment < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  paginates_per 10

  mount_uploader :picture_url, UrlPictureAdvetistmentUploader
  default_scope {order(created_at: :desc)}
end
