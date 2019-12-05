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
import { dismissAlert } from "../plugins/dismiss-alerts";


import { previewImageOnFileSelect } from '../plugins/photopreview';

import { markNotificationSeen } from '../plugins/mark_notification_seen';
import { counterParticipants } from '../components/counterParticipants'
import "pluralize";


flatPickrJs();
eventFormExport();
typedStringsExport();
chatRefresh();
window.scrollLastMessageIntoView = scrollLastMessageIntoView;
markNotificationSeen();
notifRefresh();
previewImageOnFileSelect();

if ( document.querySelector('#counter')) {
counterParticipants();
}

dismissAlert();

