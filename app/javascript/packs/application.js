import "bootstrap";

import { flatPickrJs } from "../plugins/flatpickr";


import { eventFormExport } from "../plugins/event_form";


// var typed = new Typed('#typed', {
//   stringsElement: '#typed-strings', typeSpeed: 100
// });
import { typedStringsExport } from "../plugins/typed";

import { chatRefresh } from "../plugins/init_action_cable";
import { receivedCall } from "../plugins/init_action_cable";
import { scrollLastMessageIntoView } from "../plugins/scroll";
// previewImageOnFileSelect();


flatPickrJs();
eventFormExport();
typedStringsExport();
chatRefresh();
window.scrollLastMessageIntoView = scrollLastMessageIntoView;
