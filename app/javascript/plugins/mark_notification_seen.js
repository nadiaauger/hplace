
const markNotificationSeen = () => {
  const toogleNotif = document.querySelector(".toggle-notifications");
  var i = 0;
  toogleNotif.addEventListener('click', () => {
    const badge = document.querySelector(".button_badge");
    badge.style.display = "";
    const formNotif = document.querySelector("#form-notification-seen");
    Rails.fire(formNotif, 'submit');
    // This is a disgusting hack, please forgive me. this marks all unseen elements
    // as seen upon the second click to see the notifications.
    console.log(i);
    if (i > 0) {
      document.querySelectorAll(".unseen").forEach(function(element) {
        element.classList.remove("unseen");
        element.classList.add("seen");
      });
    }
    i++
  });
}

export { markNotificationSeen };
