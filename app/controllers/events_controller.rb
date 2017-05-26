class EventsController < ApplicationController
  layout 'admin'
  before_action :basic_authentication
  before_action :set_event, only: [:edit, :destroy, :update, :show]
  before_action :set_params, only: [:create, :update]

  def index
    @events = Event.all.order(position: :desc).page(params[:page])
  end

  def new
    @event = Event.new
  end

  def edit; end

  def destroy
    if @event.destroy
      redirect_to events_path, notice: "You destroyed a event"
    else
      redirect_to events_path, notice: "You can't destroy this event"
    end
  end

  def show; end

  def create
    @event = Event.new(set_params)
    @event.position = set_params[:position].to_i
    @event.hide = set_params[:hide] == "true" ? true : false
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def update
    @event.assign_attributes(set_params)
    @event.hide = set_params[:hide] == "true" ? true : false
    @event.position = set_params[:position].to_i
    if @event.save
      redirect_to event_path(@event), notice: "You updated this event successfully"
    else
      render :edit
    end
  end

  private

  def set_event
    @event = Event.friendly.find(params[:id])
  end

  def set_params
    params.require(:event).permit(:name, :position, :description, :hide)
  end
end
