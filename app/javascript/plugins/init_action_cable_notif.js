import { markNotificationSeen } from './mark_notification_seen'

const displayNotifications = (data) => {
  const badge = document.querySelector(".button_badge");
  console.log(badge);
  const baniere = document.querySelector("#notification-alert");
  const nbNotif = document.querySelector(".number-of-notif");
  badge.style.display = "inline";
  // badge.classList.add('animated', 'bounceOutLeft')
  nbNotif.innerHTML = data.number_of_notifs
  const notifications = document.querySelector("#notifications")
  notifications.innerHTML = data.notifications_html
  markNotificationSeen()
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
