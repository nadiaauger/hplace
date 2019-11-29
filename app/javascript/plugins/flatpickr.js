import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

//console.log(document.querySelector(".datepicker"));


const flatPickrJs = () => {
  flatpickr(".timepicker", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    time_24hr: true
});
}

export { flatPickrJs };

