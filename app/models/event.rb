class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  paginates_per 10
end
