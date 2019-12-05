import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

//console.log(document.querySelector(".datepicker"));


const flatPickrJs = () => {
  flatpickr(".startpicker", {
    enableTime: true,
    enableSeconds: false,
    noCalendar: true,
    dateFormat: "H:i",
    time_12hr: true,
    defaultDate: "10:00",
});
    flatpickr(".endpicker", {
      enableTime: true,
      enableSeconds: false,
      noCalendar: true,
      dateFormat: "H:i",
      time_12hr: true,
      defaultDate: "12:00"
  });


  flatpickr(".datepicker", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    minDate: "today",
    defaultDate: "today"

});
}

export { flatPickrJs };

