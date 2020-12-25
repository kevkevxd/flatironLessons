/***** Beginning of Starter Code ****/

const playerContainer = document.querySelector(".player-container");

// render one player to the DOM
function renderPlayer(player) {
  // create an element for the outer div
  const playerDiv = document.createElement("div");

  // set attributes on the outer div
  playerDiv.className = "player";
  playerDiv.dataset.number = player.number;

  // use innerHTML to create any child elements of the div
  playerDiv.innerHTML = `
    <h3>${player.name} (<em>${player.nickname}</em>)</h3>
    <img src="${player.photo}" alt="${player.name}">
    <p class="likes">${player.likes} likes</p>
    <button class="like-button">❤️</button>
  `;

  // append the element to the container
  playerContainer.append(playerDiv);
}

// for each player in the array, render to the DOM
PLAYERS.forEach(renderPlayer);

/***** End of Starter Code ****/

/***** Deliverable 1 *****/
function toggleColor(element) {
  if (element.style.color === "red") {
    element.style.color = "black";
  } else {
    element.style.color = "red";
  }
}
const listen = document.getElementById("header");
listen.addEventListener("click", () => {
  toggleColor(document.querySelector("h1#header"));
});

/***** Deliverable 2 *****/
// render a player w/ number/name/nick/photo/likes
// add code to prevent the default behavior
// form submit event
const form = document.querySelector("form");
form.addEventListener("submit", function (e) {
  e.preventDefault();
  const number = form.number.value;
  const name = form.name.value;
  const nickname = form.nickname.value;
  const photo = form.photo.value;

  let player = new Array();
  player["number"] = number;
  player["name"] = name;
  player["nickname"] = nickname;
  player["photo"] = photo;
  player["likes"] = 0;
  renderPlayer(player);
});

/***** Deliverable 3 *****/
