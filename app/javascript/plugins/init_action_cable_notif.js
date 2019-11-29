const displayNotifications = (data) => {
  const badge = document.querySelector(".button_badge");
  const baniere = document.querySelector("#notification-alert");
  badge.style.display = "inline";
  // baniere.style.display = "inline";
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
