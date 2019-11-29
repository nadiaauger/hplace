import { scrollLastMessageIntoView } from "plugins/scroll";


// const appendMessage = (data) => {
//   console.log(data)
// }

const chatRefresh = () => {
  const selectId = document.querySelector('#chat-refresh');
  scrollLastMessageIntoView();
  App[`chat_room_${selectId.dataset.roomId}`] = App.cable.subscriptions.create(
    { channel: 'ChatRoomsChannel', chat_room_id: selectId.dataset.roomId },
    {
      received: (data) => {
        if (data.current_user_id !== parseInt(selectId.dataset.userId, 10)) {
          const messagesContainer = document.querySelector('.messages');
          messagesContainer.insertAdjacentHTML('beforeend', data.message_partial);
          scrollLastMessageIntoView();
        }
        else {
          scrollLastMessageIntoView();
        }
      }
    }
  );
}

export { chatRefresh };
