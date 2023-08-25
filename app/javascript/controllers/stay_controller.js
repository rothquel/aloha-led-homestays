import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="stay"
export default class extends Controller {
  connect() {
    console.log("Hello from stay_controller.js")

    this.hostSelectTarget.addEventListener("change", (event) => {
      console.log("Change event detected on host selection");
      this.updateRooms(event);
    });
  }



  static targets = ["hostSelect", "roomSelect"];

  updateRooms(event) {
    console.log("updateRooms function triggered");
    const hostId = event.target.value;

    // Make an AJAX request to fetch rooms for the selected host.
    fetch(`/stays/rooms_for_host/${hostId}`, { method: "GET" })
      .then((response) => response.json())
      .then((data) => {
        console.log("Fetched data:", data); // Log the fetched data

        if (data.rooms) {
          this.roomSelectTarget.innerHTML = "";

          // Populate the room dropdown with the fetched rooms.
          data.rooms.forEach((room) => {
            const option = document.createElement("option");
            option.value = room.id;
            option.textContent = room.name;
            this.roomSelectTarget.appendChild(option);
          });
        } else {
          console.error("No rooms data found in response");
        }
      })
      .catch((error) => console.error("Error fetching rooms:", error));
  }


}
