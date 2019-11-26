class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new()
    @reservation.user = current_user
    @reservation.event = Event.find(params[:event_id])
    if @reservation.save
      redirect_to event_path(@reservation.event)
    end
  end
end
