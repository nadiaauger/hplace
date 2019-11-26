class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new()
    @reservation.user = current_user
    @reservation.event = Event.find(params[:event_id])
    if @reservation.save
      redirect_to event_path(@reservation.event)
    end
  end

  def destroy
    user = current_user
    event = Event.find(params[:event_id])
    @reservation = Reservation.find_by(user: user, event: event)
    @reservation.destroy
    redirect_to event_path(event)
  end
end
