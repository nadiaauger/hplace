
const markNotificationSeen = () => {
  const toogleNotif = document.querySelector(".toggle-notifications");
  const bell = document.querySelector(".toggle-notifications");

  var i = 0;
  if (toogleNotif){
    toogleNotif.addEventListener('click', () => {
      const badge = document.querySelector(".button_badge");
      badge.style.display = "flex";
      const formNotif = document.querySelector("#form-notification-seen");
      Rails.fire(formNotif, 'submit');
      // body.classList.add('body-grise')
      // This is a disgusting hack, please forgive me. this marks all unseen elements
      // as seen upon the second click to see the notifications.
      if (i > 0) {
        console.log(i);
        document.querySelectorAll(".unseen").forEach(function(element) {
          element.classList.remove("unseen");
          element.classList.add("seen");
        });

      }
      i++
      griseBody();
    });
  }
}
const griseBody = () => {
  const body = document.querySelector(".body-to-grey");
  console.log(document.querySelector(".helping").classList.value.includes("show"))
  if (document.querySelector(".helping").classList.value.includes("show")){
    body.classList.remove('body-grise');
  }
  else {
    body.classList.add('body-grise');
  }
};

export { markNotificationSeen };
