// your ImageSlider code here!
import React from "react";

class ImageSlider extends React.Component {
  constructor() {
    super();
    this.state = {
      currentSlideIndex: 0,
    };
  }
  render() {
    return <div>I am on Slide {this.state.currentSlideIndex}</div>;
  }
}

export default ImageSlider;