class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :products, dependent: :destroy

  validates :name, presence: true, length: {in: 1..200}
end
