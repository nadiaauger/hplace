import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

//console.log(document.querySelector(".datepicker"));


const flatPickrJs = () => {
  flatpickr(".startpicker", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    time_24hr: true,
    defaultDate: "14:00"
});
    flatpickr(".endpicker", {
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
      time_24hr: true,
      defaultDate: "17:00"
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

