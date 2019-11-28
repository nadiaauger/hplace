const displayNotifications = (data) => {
  const badge = document.querySelector(".button_badge");
  badge.style.display = "";
  badge.innerHTML = data.number_of_notifs
  console.log("ok")
  console.log(data)

}


const notifRefresh = () => {
  const notif = document.querySelector('#show-notif');
  App[`notification_for_user_${notif.dataset.user}`] = App.cable.subscriptions.create(
    { channel: 'NotificationForUsersChannel', user_id: notif.dataset.user },
    { received: displayNotifications }
  );
}

export { notifRefresh };
