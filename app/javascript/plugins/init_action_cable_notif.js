const displayNotifications = (data) => {
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
