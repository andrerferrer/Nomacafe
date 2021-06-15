const btnMap = document.querySelector(".btn-map");
const btnList = document.querySelector(".btn-list");
const mapView = document.querySelector(".map-view");
const listView = document.querySelector("#list-view");

const initMapListToggle = () => {
  btnList.onclick = () => {
    mapView.style.display = "none";
    listView.classList.remove("ninja")
  };

  btnMap.onclick = () => {
    mapView.style.display = "";
    listView.classList.add("ninja");
  };
};

export { initMapListToggle };

