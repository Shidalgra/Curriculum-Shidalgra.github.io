//Menu lateral
var visible_menu = false;
let menu = document.getElementById("nav");

function showHideMenu() {
    if (visible_menu == false) {              //if menu hide
        menu.style.display = "block";
        visible_menu = true;
    } else {
        menu.style.display = "none";
        visible_menu = false;
    }
}

//I hide the menu when I choose an option
let links = document.querySelectorAll("nav a");
for (var x = 0; x < links.length; x++) {
    links[x].onclick = function () {
        menu.style.display = "none";
        visible_menu = false;
    }
}