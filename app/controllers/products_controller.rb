class ProductsController < ApplicationController
  layout 'admin'
  before_action :basic_authentication
  before_action :set_category, only: [:create, :new]
  before_action :set_product, only: [:update, :edit, :destroy, :show]
  before_action :set_params, only: [:create, :update]

  def index
    @products = Category.friendly.find(params["category_id"]).products.order(created_at: :desc).page(params[:page]) if params["category_id"].present?
    @products = Product.all.order(created_at: :desc).page(params[:page]) unless params["category_id"].present?
  end

  def create
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
    @product.assign_attributes(set_params)
    if @product.save
      redirect_to product_path(@product), notice: "You updated product successfully."
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to products_path, notice: "Deleted product successfully"
    else
      redirect_to products_path, notice: "You can't delete this product"
    end
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
