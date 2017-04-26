class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :destroy, :update, :show]
  before_action :set_params, only: [:create, :update]

  def index
    @categories = Category.all.order(created_at: :desc).page(params[:page])
  end

  def new
    @category = Category.new
  end

  def edit; end

  def destroy
  end

  def show

  end

  def create
    @category = Category.new(set_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :edit
    end
  end

  def update
    @category.assign_attributes(set_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :edit
    end
  end

  private

  def set_category
    @category = Category.friendly.find_by(id: params[:id])
  end

  def set_params
    params.require(:category).permit(:name)
  end
end
