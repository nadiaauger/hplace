const eventFormExport = () => {
  if (document.querySelector('#add-event-picto')) {
    const button = document.querySelector('#add-event-picto');
    button.addEventListener('click', event => {
      const input = document.querySelector('#event_photo');
      input.click()
    });
  }
}

export { eventFormExport };


