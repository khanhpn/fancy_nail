class SlogansController < ApplicationController
  layout 'admin'
  before_action :basic_authentication
  before_action :set_slogan, only: [:edit, :destroy, :update, :show]
  before_action :set_params, only: [:create, :update]

  def index
    @slogans = Slogan.all.page(params[:page])
  end

  def new
    @slogan = Slogan.new
  end

  def edit; end

  def destroy
    if @slogan.destroy
      redirect_to slogans_path, notice: "You destroyed a slogan"
    else
      redirect_to slogans_path, notice: "You can't destroy this slogan"
    end
  end

  def show; end

  def create
    @slogan = Slogan.new(set_params)
    @slogan.hide = set_params[:hide] == "true" ? true : false
    if @slogan.save
      redirect_to slogan_path(@slogan)
    else
      render :edit
    end
  end

  def update
    @slogan.assign_attributes(set_params)
    @slogan.hide = set_params[:hide] == "true" ? true : false
    if @slogan.save
      redirect_to slogan_path(@slogan), notice: "You updated this slogan successfully"
    else
      render :edit
    end
  end

  private

  def set_slogan
    @slogan = Slogan.friendly.find(params[:id])
  end

  def set_params
    params.require(:slogan).permit(:name, :description, :hide)
  end
end
