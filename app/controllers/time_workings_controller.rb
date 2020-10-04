class TimeWorkingsController < ApplicationController
  layout 'admin'
  before_action :basic_authentication
  before_action :set_information, only: [:index, :edit, :show, :update]

  def index; end

  def edit; end

  def new
    @information = TimeWorking.new
  end

  def show; end

  def create
    @information = TimeWorking.new(set_params)
    if @information.save
      redirect_to time_workings_path, notice: "You created information successfully"
    else
      render :edit
    end
  end

  def update
    @information.assign_attributes(set_params)
    if @information.save
      redirect_to time_workings_path, notice: "You updated information successfully"
    else
      render :edit
    end
  end

  private
  def set_information
    @information = TimeWorking.first
  end

  def set_params
    params.require(:information).permit(:address, :information_time, :copywrite, :contact_info)
  end
end
