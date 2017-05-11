class AdvetismentsController < ApplicationController
  layout 'admin'

  before_action :set_params, only: [:create, :update]
  before_action :set_advetisment, only: [:edit, :show, :destroy]

  def index
    @advetisments = Advetisment.all
  end

  def new
    @advetisment = Advetisment.new
  end

  def edit
  end

  def create
    advetisment = Advetisment.new(set_params)
    if advetisment.save
      redirect_to root_path, notice: "You created advetisment successfully."
    else
      render :edit
    end
  end

  def show
  end

  def update
    @advetisment.assign_attributes(set_params)
    if @advetisment.save
      redirect_to root_path, notice: "You updated advetisment successfully."
    else
      redirect_to root_path, notice: "You can't updat advetisment."
    end
  end

  def destroy
    @advetisment.destroy
  end

  private
  def set_params
    params.require(:advetisment).permit(:name, :picture_url, :text, :position, :hidden_item)
  end

  def set_advetisment
    @advetisment = Advetisment.friendly.find(params[:id])
  end
end
