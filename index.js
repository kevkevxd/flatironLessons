document.addEventListener("DOMContentLoaded", function(){
  createGrid()
  renderBot(currentPosition)


let moveList = document.querySelector('ul');
moveList.addEventListener('keydown', function(e){

let direction = document.createElement('li')

  if(e.key === ArrowLeft){
    direction.innerContent = move('left');
  }

  if(e.key === ArrowRight){
    direction.innerContent = move('right');
    // direction.innerHTML = <p>Move Right</p>
  }

  if(e.key === ArrowDown){
    direction.innerContent = move('down');
  }

  if(e.key === ArrowUp){
    direction.innerContent = move('up');
  }
  

//add to end of list
moveList.appendChild('move')

});


})


















