import { markNotificationSeen } from './mark_notification_seen'

const displayNotifications = (data) => {
  const badge = document.querySelector(".button_badge");
  const baniere = document.querySelector("#notification-alert");
  const nbNotif = document.querySelector(".number-of-notif");
  const animation = document.querySelector(".animation");
  badge.style.display = "flex";
  nbNotif.innerHTML = data.number_of_notifs;
  animation.classList.add('animated', 'tada');
  const notificationContainer = document.getElementById('notifications');
  if (notificationContainer) {
    notificationContainer.innerHTML = data.notifications_html
  }
  markNotificationSeen();
}


const notifRefresh = () => {
  const notif = document.querySelector('#show-notif');
  if (notif){
    App[`notification_for_user_${notif.dataset.user}`] = App.cable.subscriptions.create(
      { channel: 'NotificationForUsersChannel', user_id: notif.dataset.user },
      { received: displayNotifications }
    );
  }
}

export { notifRefresh };
