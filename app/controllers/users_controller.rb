class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def dashboard
    @user = current_user
  end

  def notification
    @notifications = []
    @notications_seen = []
    @user = current_user
    @events = Event.where(user: @user)
    @events.each do |event|
      @reservations = Reservation.where(event: event)
      @reservations.each do |resa|
        if resa.notified == false && resa.user != current_user
          @notifications << resa
          # resa.notified = true
        elsif resa.notified == true && resa.user != current_user
          @notications_seen << resa
        end
      end
    end
  end
end
