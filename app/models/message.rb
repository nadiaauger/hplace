class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room
  after_create :broadcast_message
  validates :content, presence: true, allow_blank: false

  def from?(some_user)
    user == some_user
  end

  private

  def broadcast_message
    ActionCable.server.broadcast("chat_room_#{chat_room.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, class_name: nil }
      ),
      current_user_id: user.id
    })
  end
end
