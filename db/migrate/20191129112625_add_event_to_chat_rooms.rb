class AddEventToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :chat_rooms, :event, foreign_key: true
  end
end
