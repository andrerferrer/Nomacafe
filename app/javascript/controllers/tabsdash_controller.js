import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "cafebookings", "cafetables", "cafereviews", "cafetransactions",
    "tabbook", "tabtables", "tabreviews", "tabtransactions" ]

  initialize() {
    console.log("hello");
    this.cafebookingsTarget.classList.remove('ninja');
    this.cafetablesTarget.classList.add("ninja");
    this.cafereviewsTarget.classList.add("ninja");
    this.cafetransactionsTarget.classList.add("ninja");

    this.tabbookTarget.classList.add("active");
    this.tabtablesTarget.classList.remove("active");
    this.tabreviewsTarget.classList.remove("active");
    this.tabtransactionsTarget.classList.remove("active");
  };

  bookingstab() {
    this.cafebookingsTarget.classList.remove('ninja');
    this.cafetablesTarget.classList.add("ninja");
    this.cafereviewsTarget.classList.add("ninja");
    this.cafetransactionsTarget.classList.add("ninja");

    this.tabbookTarget.classList.add("active");
    this.tabtablesTarget.classList.remove("active");
    this.tabreviewsTarget.classList.remove("active");
    this.tabtransactionsTarget.classList.remove("active");
  };

  tablestab() {
    this.cafebookingsTarget.classList.add('ninja');
    this.cafetablesTarget.classList.remove("ninja");
    this.cafereviewsTarget.classList.add("ninja");
    this.cafetransactionsTarget.classList.add("ninja");

    this.tabbookTarget.classList.remove("active");
    this.tabtablesTarget.classList.add("active");
    this.tabreviewsTarget.classList.remove("active");
    this.tabtransactionsTarget.classList.remove("active");
  };

  reviewstab() {
    this.cafebookingsTarget.classList.add('ninja');
    this.cafetablesTarget.classList.add("ninja");
    this.cafereviewsTarget.classList.remove("ninja");
    this.cafetransactionsTarget.classList.add("ninja");

    this.tabbookTarget.classList.remove("active");
    this.tabtablesTarget.classList.remove("active");
    this.tabreviewsTarget.classList.add("active");
    this.tabtransactionsTarget.classList.remove("active");
  };

  transactionstab() {
    this.cafebookingsTarget.classList.add('ninja');
    this.cafetablesTarget.classList.add("ninja");
    this.cafereviewsTarget.classList.add("ninja");
    this.cafetransactionsTarget.classList.remove("ninja");

    this.tabbookTarget.classList.remove("active");
    this.tabtablesTarget.classList.remove("active");
    this.tabreviewsTarget.classList.remove("active");
    this.tabtransactionsTarget.classList.add("active");
  };
}
