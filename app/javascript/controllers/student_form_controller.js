import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="student-form"
export default class extends Controller {
    static targets = ["allergyDetails"];

    toggleAllergyDetails(event) {
    console.log("toggleAllergyDetails function triggered");
    const selectedOption = event.target.value;

    // Show/hide the allergy details based on the selected option
    if (selectedOption === "yes") {
      this.allergyDetailsTarget.style.display = "block";
    } else {
      this.allergyDetailsTarget.style.display = "none";
    }
  }
}
