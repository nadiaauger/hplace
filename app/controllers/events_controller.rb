require 'open-uri'

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
     unless @event.photo.attached?
       file = URI.open('https://images.pexels.com/photos/230477/pexels-photo-230477.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
       @event.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
     end
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
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
    params.require(:event).permit(:name, :location, :end, :start, :max_particpants, :description, :photo)
  end
end
