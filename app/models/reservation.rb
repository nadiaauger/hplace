class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  after_create :broadcast_notification

  private

  def broadcast_notification
    ActionCable.server.broadcast(
      "notification_for_user#{event.user_id}",
      number_of_notifs: event.user.number_of_notifications,
      notifications_html: ApplicationController.render(
        partial: "shared/dropdown_notif",
        locals: { target_user: event.user }
      )
    )
  end
end
