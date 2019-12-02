import "bootstrap";

import { flatPickrJs } from "../plugins/flatpickr";


import { eventFormExport } from "../plugins/event_form";

import "../plugins/dashboard_tabs";



import { typedStringsExport } from "../plugins/typed";

import { chatRefresh } from "../plugins/init_action_cable";
import { receivedCall } from "../plugins/init_action_cable";
import { scrollLastMessageIntoView } from "../plugins/scroll";
// previewImageOnFileSelect();

import "../plugins/typed";

import { notifRefresh } from "../plugins/init_action_cable_notif";


import { previewImageOnFileSelect } from '../plugins/photopreview';


flatPickrJs();
eventFormExport();
typedStringsExport();
chatRefresh();
window.scrollLastMessageIntoView = scrollLastMessageIntoView;

notifRefresh();
previewImageOnFileSelect();

