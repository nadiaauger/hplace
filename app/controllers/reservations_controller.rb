class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new()
    @event = Event.find(params[:event_id])
    @reservation.user = current_user
    @reservation.event = @event

    if @reservation.save
      respond_to do |format|
        format.html {  redirect_to dashboard_path }
        format.js
      end
    end
  end

  def destroy
    user = current_user
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_path }
      format.js
    end
  end
end
