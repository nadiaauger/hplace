class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @name_page = "Profile"

  end

  def dashboard
    @user = current_user
    @registrations = @user.reservations
    @name_page = 'Dashboard'

  end

  def notification
    @name_page = 'notifications'
    @notifications = []
    @notifications_seen = []
    @notifications_old = []
    @notifications_new = []
    @user = current_user
    @events = Event.where(user: @user)
    @events.each do |event|
      if EventSeen.find_by(user: @user, event: event).nil?
        @notifications << event
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
          @notifications_old << resa
        end
      end
    end
    @notifications.sort_by {|obj| obj.created_at}
    @notifications_old.sort_by {|obj| obj.created_at}
  end
end
