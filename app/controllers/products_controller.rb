class ProductsController < ApplicationController
  before_action :set_product, only: [:create, :update, :edit, :destroy]
  before_action :set_params, only: [:create, :update]

  def index
  end

  def create

  end

  def update

  end

  def destroy

  end

  def edit

  end

  def show

  end

  private

  def set_product
    @product = Product.friendly.find_by(id: params[:id])
  end

  def set_params
    params.require(:product).permit(:name, :description, :price)
  end
end
