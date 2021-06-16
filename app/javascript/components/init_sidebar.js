const closeBtn = document.querySelector(".closeit");
const openBtn = document.querySelector(".openit");

const initCloseNav = () => {
    closeBtn.onclick = () => {
        document.getElementById("mySidenav").style.width = "0";
        document.getElementById("main").style.marginLeft = "0";
        document.body.style.backgroundColor = "white"
    };
}

const initOpenNav = () => {
    openBtn.onclick = () => {
        document.getElementById("mySidenav").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
        document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
    };
}


export { initCloseNav }
export { initOpenNav }