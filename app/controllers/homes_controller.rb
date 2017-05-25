class HomesController < ApplicationController
  before_action :basic_authentication, only: [:admin]
  layout 'admin', only: [:admin]

  def index
    @newests = Product.newest.includes(:pictures, :category)&.order(created_at: :desc)&.take(9)
    @features = Product.feature.includes(:pictures, :category)&.order(created_at: :desc)&.take(9)
    @categories = Category.includes(:products)&.order(position: :desc)
    @recommends = Product.recommend.includes(:pictures, :category)&.order(created_at: :desc)
    @advetistments = Advetisment.all
    @videos = Video.all.order(:position)&.take(4)
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

  def policy; end

  def term_of_use; end

  def admin
  end

  def store_location
  end

  def event
  end

  def about
  end
end
