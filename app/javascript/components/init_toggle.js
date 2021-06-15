const btnMap = document.querySelector(".btn-map");
const btnList = document.querySelector(".btn-list");
const mapView = document.querySelector(".map-view");
const listView = document.querySelector(".list-view");

const initMapListToggle = () => {
  btnList.onclick = () => {
    mapView.style.display = "none";
    listView.style.display = "block";
  };

  btnMap.onclick = () => {
    mapView.style.display = "block";
    listView.style.display = "none";
  };
};

export { initMapListToggle };

