const counterParticipants = () => {

  const counter = document.querySelector('#counter');
  const decrease = document.querySelector('.incrementer-minus');
  const increase = document.querySelector('.incrementer-plus');
  const maxInput = document.querySelector('#event_max_participants');

  increase.addEventListener('click', event => {
    event.preventDefault();
    const finalValue = Number.parseInt(counter.innerText, 10) + 1;
    counter.innerText = finalValue;
    maxInput.value = finalValue;
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
      maxInput.value = finalValue;
    }
  });



};
export { counterParticipants };




// const increase = document.querySelector('.incrementer-plus').dataset.offset;
// increase.addEventListener('click', event => {
//  counter.value = counter.value +1;
// })
