class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @name_page = "Profile"
  end

  def dashboard
    @user = current_user
    @registrations = @user.reservations
  end

  def notification
    @notifications = []
    @notifications_seen = []
    @notifications_old = []
    @notifications_new = []
    @user = current_user
    @events = Event.where(user: @user)
    @events.each do |event|
      if EventSeen.find_by(user: @user, event: event).nil?
        @notifications_new << event
      else
        @notifications_old << event
      end
      @reservations = Reservation.where(event: event)
      @reservations.each do |resa|
        if resa.notified == false && resa.user != current_user
          @notifications << resa
          resa.notified = true
          resa.save
        elsif resa.notified == true && resa.user != current_user
          @notifications_seen << resa
        end
      end
    end
  end
end
