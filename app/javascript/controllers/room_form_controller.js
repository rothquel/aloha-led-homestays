import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="room-form"
export default class extends Controller {
  connect() {
    console.log("Hello from room_form_controller.js");
  }

  static targets = ["numberOfRooms", "roomForms"];

  generateRoomForms(event) {
    const selectedNumberOfRooms = event.target.value;
    console.log(`Selected number of rooms: ${selectedNumberOfRooms}`);

    // Clear any existing room forms
    this.roomFormsTarget.innerHTML = "";
    console.log("Cleared existing room forms");

    // Clone the template for each room
    for (let i = 0; i < selectedNumberOfRooms; i++) {
      const template = document.getElementById("room-fields-template").cloneNode(true);
      const roomNumber = i + 1;
      template.innerHTML = template.innerHTML.replace("[ROOM_NUMBER]", roomNumber);
      template.style.display = "block";
      this.roomFormsTarget.appendChild(template);
      console.log(`Generated room form for Room ${roomNumber}`);
    }
  }

}
