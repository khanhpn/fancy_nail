class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  paginates_per 10

  has_many :pictures, dependent: :destroy
  belongs_to :category

  accepts_nested_attributes_for :pictures, allow_destroy: true

  validates :name, presence: true, length: {in: 1..200}
  validates :price, presence: true, allow_nil: true, allow_blank: true

  enum special: {feature: "Feature", newest: "Newest", sale: "Sale", recommend: "Recommend"}
end
