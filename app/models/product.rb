class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :pictures, dependent: :destroy
  belongs_to :category

  validates :name, presence: true, length: {in: 1..200}
  validates :price, presence: true, allow_nil: true, allow_blank: true

  enum specials: {feature: "feature", newest: "newest", sale: "sale"}
end
