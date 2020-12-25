import React from "react";

const Pizza = (props) => {
  const editButtonHandler = (e) => {
    props.editButton(props.pizza);
  };

  return (
    <tr>
      <td>{props.pizza.topping}</td>
      <td>{props.pizza.size}</td>
      <td>{props.pizza.vegetarian === false ? "No" : "Yes"}</td>
      <td>
        <button
          onClick={() => editButtonHandler()}
          type="button"
          className="btn btn-primary"
        >
          Edit Pizza
        </button>
      </td>
    </tr>
  );
};

export default Pizza;