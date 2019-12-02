class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
    @chatroom_user = current_user
    @event = Event.find(params[:event_id])
  end

  def create
    @event = Event.find(params[:event_id])
    if ChatRoom.find_by(event_id: @event) != nil
      @chat_room = ChatRoom.find_by(event_id: @event)
    else
      @chat_room = ChatRoom.new
      @chat_room.event = @event
    end
    @chat_room.save
    redirect_to event_chat_room_path(@event.id, @chat_room)
  end
end
