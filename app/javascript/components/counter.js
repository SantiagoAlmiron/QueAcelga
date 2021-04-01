const amountCounter = () => {
  const cards = document.querySelectorAll("#product-card")
  cards.forEach(card => {
    const plusButton = card.querySelector("#plus-button > div");
    const lessButton = card.querySelector("#rest-button > div");
    const numberPlace = card.querySelector("#amount-place");
    plusButton.addEventListener("click", () => {
      numberPlace.value = parseInt(numberPlace.value) + 1;
    });

    lessButton.addEventListener("click", () => {
      numberPlace.value > 0 ? numberPlace.value = parseInt(numberPlace.value) - 1 : numberPlace.value = 0;
    });
  });
};

export { amountCounter };
  
