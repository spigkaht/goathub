import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "blurrableElement"]

  connect() {
    console.log("Hello world!");
  }

  fire() {
    this.togglableElementTarget.classList.toggle("d-none");
    this.blurrableElementTarget.classList.toggle("index-blur");
  }
}
