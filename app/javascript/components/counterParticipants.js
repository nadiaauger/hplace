const counterParticipants = () => {

  if (document.querySelector('#counter')) {
    const counter = document.querySelector('#counter');
    const decrease = document.querySelector('.incrementer-minus');
    const increase = document.querySelector('.incrementer-plus');

    increase.addEventListener('click', event => {
      event.preventDefault();
      const finalValue = Number.parseInt(counter.innerText, 10) + 1;
      counter.innerText = finalValue;
      if (decrease.classList.contains("disabled")) {
        decrease.classList.remove("disabled");
      }
    });

    decrease.addEventListener('click', event => {
      event.preventDefault();
      const finalValue = Number.parseInt(counter.innerText, 10) - 1;
      if (finalValue < 1) {
        event.currentTarget.classList.add("disabled");
      } else {
        counter.innerText = finalValue;
      }
    });
  }
};
export { counterParticipants };




// const increase = document.querySelector('.incrementer-plus').dataset.offset;
// increase.addEventListener('click', event => {
//  counter.value = counter.value +1;
// })
