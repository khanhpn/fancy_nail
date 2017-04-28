class ProductsController < ApplicationController
  layout 'admin'

  before_action :set_category, only: [:create, :new]
  before_action :set_product, only: [:update, :edit, :destroy, :show]
  before_action :set_params, only: [:create, :update]

  def index
    @products = Product.all.page(params[:page])
  end

  def create
    # binding.pry
    product = @category.products.new(set_params)
    if product.save
      redirect_to product_path(product), notice: "Create product sucessfully"
    else
      render :edit
    end
  end

  def new
    @product = @category.products.new
    @product.pictures.build
  end

  def update
  end

  def destroy
  end

  def edit; end

  def show; end

  def upload_image
    render json: { message: 'You have successfully uploded your images.' }
  end

  private

  def set_product
    @product = Product.friendly.find(params[:id])
  end

  def set_category
    @category = Category.friendly.find(params[:category_id])
  end

  def set_params
    params.require(:product).permit(:name, :description, :price, :category_id, :special, :pictures_attributes => [:id, :url_picture])
  end
end
