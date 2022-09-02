import { Controller } from "@hotwired/stimulus";
import Typed from "typed.js";

// Connects to data-controller="typed"
export default class extends Controller {
  connect() {
    const options = {
      strings: [
        "avocado",
        "fitzroy",
        "almond milk",
        "soy milk",
        "deviled eggs",
      ],
      typeSpeed: 40,
      loop: true,
      shuffle: true,
    };

    new Typed(this.element, options);
  }
}
