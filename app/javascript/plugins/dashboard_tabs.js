
if (document.querySelector(".tabs-underlined")){
const organise = document.querySelector(".organise")
const participe = document.querySelector(".participe")
const découvrire = document.querySelector(".découvrire")

organise.addEventListener('click', (event) => {
  const mine = document.querySelector(".mine")
  const their = document.querySelector(".their")
  const disc = document.querySelector(".disc")

  mine.classList.remove("d-none");
  their.classList.add("d-none");
  disc.classList.add("d-none");


  découvrire.classList.remove("active");
  participe.classList.remove("active");
  organise.classList.add("active");

   });

découvrire.addEventListener('click', (event) => {
  const mine = document.querySelector(".mine")
  const their = document.querySelector(".their")
  const disc = document.querySelector(".disc")

  mine.classList.add("d-none");
  their.classList.add("d-none");
  disc.classList.remove("d-none");


  découvrire.classList.add("active");
  participe.classList.remove("active");
  organise.classList.remove("active");

   });

participe.addEventListener('click', (event) => {
  const mine = document.querySelector(".mine")
  const their = document.querySelector(".their")
  const disc = document.querySelector(".disc")

  disc.classList.add("d-none");
  mine.classList.add("d-none");
  their.classList.remove("d-none");

  découvrire.classList.remove("active");
  participe.classList.add("active");
  organise.classList.remove("active");

   });}
