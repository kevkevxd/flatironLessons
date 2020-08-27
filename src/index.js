let addToy = false;

let formData = {
  name: "",
  image: "",
};

let configObj = {
  method: "POST",
  headers: {
    "Content-Type": "application/json",
    Accept: "application/json",
  },
  body: JSON.stringify(formData),
};

fetch("http://localhost:3000/toys", configObj);

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

let taskForm = document.querySelector(".add-toy-form");
taskForm.addEventListener("submit", function (e) {
  e.preventDefault();
  let toyName = taskForm.name.value;
  let image = taskForm.image.value;
});

document.addEventListener("DOMContentLoaded", () => {
  const addBtn = document.querySelector("#new-toy-btn");
  const toyFormContainer = document.querySelector(".container");
  addBtn.addEventListener("click", (e) => {
    // console.log(e.target);
    // hide & seek with the form
    addToy = !addToy;
    if (addToy) {
      toyFormContainer.style.display = "block";
    } else {
      toyFormContainer.style.display = "none";
    }
  });
});
