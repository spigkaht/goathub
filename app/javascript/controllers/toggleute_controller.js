import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggleute"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    const confirmBtn = document.querySelector("#confirm")
    const toggleDiv = document.querySelector("#toggleDiv")
    confirmBtn.addEventListener("click", (e) => {
      e.preventDefault;
      toggleDiv.classList.toggle("d-none");
      confirmBtn.classList.toggle("d-none");
    })
  }

}
