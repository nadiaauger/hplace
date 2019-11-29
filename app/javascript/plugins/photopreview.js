
const previewImageOnFileSelect = () => {
  // we select the photo input
  if (document.getElementById('photo-input')) {
    const input = document.getElementById('photo-input');
    const photo = document.getElementById("browsing-photo");

    photo.addEventListener('click', () => {
      input.click()
    })
    if (input) {
      // we add a listener to know when a new picture is uploaded
      input.addEventListener('change', () => {
        displayPreview(input);
        // we call the displayPreview function (who retrieve the image url and display it)
      })
    }
  }
}



const displayPreview = (input) => {
  if (input.files && input.files[0]) {
    const reader = new FileReader();
    reader.onload = (event) => {
      document.getElementById('photo-preview').src = event.currentTarget.result;
    }
    reader.readAsDataURL(input.files[0])
    document.getElementById('photo-preview').classList.remove('hidden');
  }
}

export { previewImageOnFileSelect };

