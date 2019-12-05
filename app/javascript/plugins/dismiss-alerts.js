const dismissAlert = () => {
  window.setTimeout(() => {
    $(".alert-dismissible").remove()
  },
    5000
  )
};

export { dismissAlert };
