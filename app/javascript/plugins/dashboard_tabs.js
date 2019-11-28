
if (document.querySelector(".tabs-underlined")){
  const organise = document.querySelector(".organise")
const participe = document.querySelector(".participe")

organise.addEventListener('click', (event) => {
  const mine = document.querySelector(".mine")
  const their = document.querySelector(".their")
  mine.classList.remove("d-none");
  their.classList.add("d-none");


  participe.classList.remove("active");
  organise.classList.add("active");

   });


participe.addEventListener('click', (event) => {
  const mine = document.querySelector(".mine")
  const their = document.querySelector(".their")
  mine.classList.add("d-none");
  their.classList.remove("d-none");

  participe.classList.add("active");
  organise.classList.remove("active");

   });}
