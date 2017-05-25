class VideosController < ApplicationController
  layout 'admin'
  before_action :basic_authentication
  before_action :set_video, only: [:edit, :destroy, :update, :show]
  before_action :set_params, only: [:create, :update]

  def index
    @videos = Video.all.order(position: :desc).page(params[:page])
  end

  def new
    @video = Video.new
  end

  def edit; end

  def destroy
    if @video.destroy
      redirect_to videos_path, notice: "You destroyed a video"
    else
      redirect_to videos_path, notice: "You can't destroy this video"
    end
  end

  def show; end

  def create
    @video = Video.new(set_params)
    @video.position = set_params[:position].to_i
    if @video.save
      redirect_to video_path(@video)
    else
      render :edit
    end
  end

  def update
    @video.assign_attributes(set_params)
    @video.position = set_params[:position].to_i
    if @video.save
      redirect_to video_path(@video), notice: "You updated this video successfully"
    else
      render :edit
    end
  end

  private

  def set_video
    @video = Video.friendly.find(params[:id])
  end

  def set_params
    params.require(:video).permit(:name, :position, :description, :hide, :url_video)
  end
end
