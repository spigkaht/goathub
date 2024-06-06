import { Controller } from "@hotwired/stimulus"

import correctSound from "./assets/sounds/Bahhhh.mp3";

// Connects to data-controller="sfx"
export default class extends Controller {
  static targets = ["sound"]
  static values = {
    correct: Boolean
  }

  connect() {
    console.log("connected")
    console.log(this.correctValue)
    if (this.correctValue) {
      this.playCorrectSound();
    }
  }


  playCorrectSound() {
    try {
      // I pull the src value from the audio tag
      const url = this.soundTarget.src;
      const audio = new Audio(url);
      audio.play();
    } catch (error) {
      console.error("Failed to play sound:", error);
    }
  }
}
