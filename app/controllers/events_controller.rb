class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new()
  end

  private

  # def event_params
  #   params.require(:event).permit(:content)
  # end
end
