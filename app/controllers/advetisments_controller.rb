class AdvetismentsController < ApplicationController
  layout 'admin'

  before_action :basic_authentication
  before_action :set_params, only: [:create, :update]
  before_action :set_advetisment, only: [:edit, :show, :destroy, :update]

  def index
    @advetisments = Advetisment.all.page(params[:page])
  end

  def new
    @advetisment = Advetisment.new
  end

  def edit
  end

  def create
    @advetisment = Advetisment.new(set_params)
    @advetisment.hidden_item = set_params[:hidden_item] == "true" ? true : false
    if @advetisment.save
      redirect_to advetisment_path(@advetisment), notice: "You created advetisment successfully."
    else
      render :edit
    end
  end

  def show
  end

  def update
    @advetisment.assign_attributes(set_params)
    @advetisment.hidden_item = set_params[:hidden_item] == "true" ? true : false
    if @advetisment.save
      redirect_to advetisment_path(@advetisment), notice: "You updated advetisment successfully."
    else
      redirect_to advetisment_path(@advetisment), notice: "You can't updat advetisment."
    end
  end

  def destroy
    @advetisment.destroy
    redirect_to advetisments_path, notice: "You deleted advetisment successfully."
  end

  private
  def set_params
    params.require(:advetisment).permit(:name, :picture_url, :text, :position, :hidden_item, :description, :icon_name)
  end

  def set_advetisment
    @advetisment = Advetisment.friendly.find(params[:id])
  end
end
