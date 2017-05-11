class CategoriesController < ApplicationController
  layout 'admin'
  before_action :basic_authentication
  before_action :set_category, only: [:edit, :destroy, :update, :show]
  before_action :set_params, only: [:create, :update]

  def index
    @categories = Category.all.order(position: :desc).page(params[:page])
  end

  def new
    @category = Category.new
  end

  def edit; end

  def destroy
    if @category.destroy
      redirect_to categories_path, notice: "You destroyed a category"
    else
      redirect_to categories_path, notice: "You can't destroy this category"
    end
  end

  def show; end

  def create
    @category = Category.new(set_params)
    @category.position = set_params[:position].to_i
    if @category.save
      redirect_to category_path(@category)
    else
      render :edit
    end
  end

  def update
    @category.assign_attributes(set_params)
    @category.position = set_params[:position].to_i
    if @category.save
      redirect_to category_path(@category), notice: "You updated this category successfully"
    else
      render :edit
    end
  end

  private

  def set_category
    @category = Category.friendly.find(params[:id])
  end

  def set_params
    params.require(:category).permit(:name, :position)
  end
end
