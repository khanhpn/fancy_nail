class HomesController < ApplicationController
  def index
    @newest = Product.newest
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
