class HomesController < ApplicationController
  def index
    @newests = Product.newest.includes(:pictures, :category)&.order(created_at: :desc)&.take(9)
    @features = Product.feature.includes(:pictures, :category)&.order(created_at: :desc)&.take(9)
    @categories = Category.includes(:products)&.order(position: :desc)
    @recommends = Product.recommend.includes(:pictures, :category)&.order(created_at: :desc)
  end

  def contact
  end

  def download
    send_file(
      "#{Rails.root}/public/pdf/Fancy_Nail_Brochure_Mar_8_2017.pdf",
      filename: "Fancy Nail Brochure - Mar 8, 2017.pdf",
      type: "application/pdf"
    )
  end
end
