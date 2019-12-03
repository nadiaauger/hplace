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
    @name_page = 'Notifications'
    @events = Event.where(user: current_user)
    @notifications_new = current_user.unseen_notifications
    @notifications_seen = current_user.seen_notifications
    current_user.events_created_by_someone_else_not_seen_yet.each do |event|
      EventSeen.create(user: current_user, event: event)
    end
    current_user.reservations_on_my_own_events_not_yet_seen.each do |resa|
      resa.notified = true
      resa.save
    end
    # @notifications_new.sort_by {|obj| obj.created_at}
    # @notifications_seen.sort_by {|obj| obj.created_at}
  end
end
