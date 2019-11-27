require 'open-uri'

class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @event = Event.find(params[:id])
    @event_seen = EventSeen.new(user: current_user, event: @event)
    @event_seen.save
  end

  def new
    @name_page = "Create event"
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.hospital = current_user.hospital
    unless @event.photo.attached?
      file = URI.open('https://images.pexels.com/photos/230477/pexels-photo-230477.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
      @event.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
    end
    @reservation = Reservation.new(user: current_user, event: @event)
    if @event.save && @reservation.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    @name_page = "Update event"
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :end, :start, :max_participants, :description, :photo)
  end
end
