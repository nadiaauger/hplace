import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

//console.log(document.querySelector(".datepicker"));

const flatPickrJs = () => {
  flatpickr(".datepicker");
}

export { flatPickrJs };
