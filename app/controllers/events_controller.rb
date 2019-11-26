class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.hospital = current_user.hospital
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :end, :start, :max_particpants, :description, :photo)
  end
end
