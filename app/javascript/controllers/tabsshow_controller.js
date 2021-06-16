import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "bookspot", "showmenu", "seereviews", "booktab", "menutab", "reviewtab"]

  initialize() {
    console.log("hello");
    this.bookspotTarget.classList.remove('ninja');
    this.showmenuTarget.classList.add("ninja");
    this.seereviewsTarget.classList.add("ninja");

    this.booktabTarget.classList.add("active");
    this.menutabTarget.classList.remove("active");
    this.reviewtabTarget.classList.remove("active");
  };

  bookings() {
    this.bookspotTarget.classList.remove('ninja');
    this.showmenuTarget.classList.add("ninja");
    this.seereviewsTarget.classList.add("ninja");

    this.booktabTarget.classList.add("active");
    this.menutabTarget.classList.remove("active");
    this.reviewtabTarget.classList.remove("active");
  };

  menu() {
    this.bookspotTarget.classList.add('ninja');
    this.showmenuTarget.classList.remove("ninja");
    this.seereviewsTarget.classList.add("ninja");

    this.booktabTarget.classList.remove("active");
    this.menutabTarget.classList.add("active");
    this.reviewtabTarget.classList.remove("active");
  };

  reviews() {
    this.bookspotTarget.classList.add('ninja');
    this.showmenuTarget.classList.add("ninja");
    this.seereviewsTarget.classList.remove("ninja");

    this.booktabTarget.classList.remove("active");
    this.menutabTarget.classList.remove("active");
    this.reviewtabTarget.classList.add("active");
  };
}
