/***** Deliverable 1 *****/
const header = document.querySelector("#header");
console.log("Here's your header:", header);
/***** Deliverable 2 *****/
header.style.color = "red";
/***** Deliverable 3 *****/
console.log("PLAYERS array looks like this:", PLAYERS);
let playerContainer = document.getElementsByClassName("player-container")[0];
for (let i = 0; i < PLAYERS.length; i++) {
  const player = document.createElement("div");
  player.className = "player";
  player.setAttribute("data-number", PLAYERS[i].number);
  const heading = document.createElement("h3");
  heading.innerHTML = `${PLAYERS[i].name} (<em>${PLAYERS[i].nickname}</em>)`;
  const image = document.createElement("img");
  image.setAttribute("src", PLAYERS[i].photo);
  image.setAttribute("alt", PLAYERS[i].name);
  player.append(heading);
  player.append(image);
  //   playerDiv.innerHTML = playerInfo;
  playerContainer.append(player);
}

/***** Deliverable 4 *****/
document.querySelector('[data-number="7"]').remove();
