import "bootstrap";

import "../plugins/flatpickr";


import "../plugins/event_form";

import "../plugins/dashboard_tabs";


// var typed = new Typed('#typed', {
//   stringsElement: '#typed-strings', typeSpeed: 100
// });
import "../plugins/typed";
import "../components/photopreview";

import { notifRefresh } from "../plugins/init_action_cable_notif";

if (document.querySelector(".photo-create-event")){
  previewImageOnFileSelect();
}


import { previewImageOnFileSelect } from '../components/photopreview';

notifRefresh();
