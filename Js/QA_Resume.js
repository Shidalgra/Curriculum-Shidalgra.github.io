//Menu lateral

var visible_menu = false;
let menu = document.getElementById("nav");
let nav_bar = document.getElementById("nav-bar");
let links = document.querySelectorAll("nav a");
/*

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
*/

function showHideMenu() {
    if (visible_menu == false) {
        menu.style.display = "block";
        nav_bar.style.display = "block";
        visible_menu = true;    
    } else {
        menu.style.display = "none";
    nav_bar.style.display = "fixed";
    visible_menu = false;
    }
    
    
    

    // Agregar un event listener para cerrar el menú si se hace clic fuera de él
    document.addEventListener("click", function(event) {
        var target = event.target;
        if (!menu.contains(target) && target != nav_bar) {
            menu.style.display = "none";
            nav_bar.style.display = "fixed";
            visible_menu = false;
            
        }

        for (var x = 0; x < links.length; x++) {
            links[x].onclick = function () {
                menu.style.display = "none";
                visible_menu = false;
            }
        }
    });
}
