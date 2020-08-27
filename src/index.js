let addToy = false;

function fetchToys() {
  return fetch("http://localhost:3000/toys")
    .then(function (response) {
      return response.json();
    })
    .then(function (toys) {
      const toyCollection = document.querySelector("#toy-collection");
      toys.forEach((character) => {
        const card = document.createElement("div");
        card.className = "card";
        card.innerHTML = ` 
        <h2>${character.name}</h2>
        <img src="${character.image}" class="toy-avatar" />
        <p>${character.likes} Likes </p>
        <button class="like-btn">Like <3</button>
      </div>`;

        toyCollection.append(card);
      });
    });
}

fetchToys();
document.addEventListener("DOMContentLoaded", () => {
  const addBtn = document.querySelector("#new-toy-btn");
  const toyFormContainer = document.querySelector(".container");
  addBtn.addEventListener("click", () => {
    // hide & seek with the form
    addToy = !addToy;
    if (addToy) {
      toyFormContainer.style.display = "block";
    } else {
      toyFormContainer.style.display = "none";
    }
  });
  // fetch toy objects from api
  // take them out of the array object
  // add them to a new div class called "card" under toy-collection div
  //
});
