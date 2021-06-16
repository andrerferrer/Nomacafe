import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "maptar", "listtar", "tabmap", "tablist" ]

  initialize() {
    this.maptarTarget.classList.remove('ninja');
    this.listtarTarget.classList.add("ninja");

    this.tabmapTarget.classList.add("btn-active");
    this.tablistTarget.classList.remove("btn-active");

  };

  map() {
    this.maptarTarget.classList.remove("ninja");
    this.listtarTarget.classList.add("ninja");

    this.tabmapTarget.classList.add("btn-active");
    this.tablistTarget.classList.remove("btn-active");
  };

  list() {
    this.maptarTarget.classList.add("ninja");
    this.listtarTarget.classList.remove("ninja");

    this.tabmapTarget.classList.remove("btn-active");
    this.tablistTarget.classList.add("btn-active");
  };
}
