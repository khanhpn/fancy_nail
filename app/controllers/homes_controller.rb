class HomesController < ApplicationController
  before_action :basic_authentication, only: [:admin]
  layout 'admin', only: [:admin]

  def index
    @newests = Product.newest.includes(:pictures, :category)&.order(created_at: :desc)&.take(9)
    @features = Product.feature.includes(:pictures, :category)&.order(created_at: :desc)&.take(9)
    @categories = Category.includes(:products)&.order(position: :desc)
    @advetistments = Advetisment.all
    @videos = Video.where(hide: false).order(:position)&.take(4)
    @events = Event.where(hide: false).order(:updated_at)&.take(4)
    @slogan = Slogan.where(hide: false).order(:updated_at)&.first
    @information = TimeWorking.first
  end

  def contact
    @slogan = Slogan.where(hide: false).order(:updated_at)&.first
  end

  def download
    send_file(
      "#{Rails.root}/public/pdf/Fancy_Nail_Brochure_Mar_8_2017.pdf",
      filename: "Fancy Nail Brochure - Mar 8, 2017.pdf",
      type: "application/pdf"
    )
  end

  def policy;
    @slogan = Slogan.where(hide: false).order(:updated_at)&.first
  end

  def term_of_use
    @slogan = Slogan.where(hide: false).order(:updated_at)&.first
  end

  def admin
  end

  def store_location
    @slogan = Slogan.where(hide: false).order(:updated_at)&.first
  end

  def event
  end

  def about
    @slogan = Slogan.where(hide: false).order(:updated_at)&.first
  end
end
