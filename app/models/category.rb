class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  paginates_per 10

  has_many :products, dependent: :destroy

  validates :name, presence: true, length: {in: 1..200}
end
