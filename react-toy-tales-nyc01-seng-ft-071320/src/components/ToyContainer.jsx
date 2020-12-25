import React from 'react';
import ToyCard from './ToyCard'


const ToyContainer = (props) => {
  console.log("toycontainer:", props.toys)
  return(
    <div id="toy-collection">
      {props.toys.map(ele => <ToyCard toy={ele}  clickHandler={props.likeHandler}/>) //mapping each card as a prop in ele
      }
    </div>
  );
}

export default ToyContainer;
