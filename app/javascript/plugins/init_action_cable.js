const appendMessage = (data) => {
  console.log(data)
}

const chatRefresh = () => {
  const selectId = document.querySelector('#chat-refresh');
  App[`chat_room_${selectId.dataset.roomId}`] = App.cable.subscriptions.create(
    { channel: 'ChatRoomsChannel', chat_room_id: selectId.dataset.roomId },
    { received: appendMessage }
  );
}

export { chatRefresh };
