
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "input", "results" ]

  display() {
    console.log(this.inputTarget.value);
    // Query the algolia api
    const results = ["result 1", "result 2", "result 3"]
    fetch(`https://www.yourapp.com/cars?query=${this.inputTarget.value}`)
      .then(response => response.json())
      .then(data => { console.log(data) });
    // Display the results
      // build the results html
      let displayHTML = ''
      results.forEach((result) => {
        displayHTML +=
          `<p>${result} and ${this.inputTarget.value}</p>`;
      });
      // Insert the html
      this.resultsTarget.innerHTML = '';
      this.resultsTarget.innerHTML = displayHTML;
  }
}
