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





//-------------------------------------------------------------------
//I create the animations for the skill bars
function createBar(id_bar) {
    for (i = 0; i <= 19.0; i++) {
        let div = document.createElement("div");
        div.className = "e";
        id_bar.appendChild(div);
    }
}

//I select all the bars to then manipulate them
let html = document.getElementById("html");
createBar(html);

let css = document.getElementById("css");
createBar(css);

let javascript = document.getElementById("javascript");
createBar(javascript);

let qa = document.getElementById("qa");
createBar(qa);

let java = document.getElementById("java");
createBar(java);

let php = document.getElementById("php");
createBar(php);

let sql = document.getElementById("sql");
createBar(sql);

let cisco = document.getElementById("cisco");
createBar(cisco);

let wordpress = document.getElementById("wordpress");
createBar(wordpress);

//I use an array to paint the bars that will be seen in each bar created, it starts at -1 because it starts counting from 0
let counters = [-1, -1, -1, -1, -1, -1, -1, -1, -1];
//this variable is the flag of the function
let intro = false;

//here is the function
function effectSkills() {
    var skills = document.getElementById("skills")
    var skills_distance = window.innerHeight - skills.getBoundingClientRect().top;
    if (skills_distance >= 300 && intro == false) {
        intro = true;
        const intervalHtml = setInterval(function () {
            barPaint(html, 20, 0, intervalHtml);
        }, 100);
        const intervalCss = setInterval(function () {
            barPaint(css, 19, 1, intervalCss);
        }, 100);
        const intervalJavascript = setInterval(function () {
            barPaint(javascript, 17, 2, intervalJavascript);
        }, 100);
        const intervalQa = setInterval(function () {
            barPaint(qa, 18, 3, intervalQa);
        }, 100);
        const intervalPhp = setInterval(function () {
            barPaint(php, 18, 4, intervalPhp);
        }, 100);
        const intervalJava = setInterval(function () {
            barPaint(java, 18, 5, intervalJava);
        }, 100);
        const intervalSql = setInterval(function () {
            barPaint(sql, 19, 6, intervalSql);
        }, 100);
        const intervalCisco = setInterval(function () {
            barPaint(cisco, 16, 7, intervalCisco);
        }, 100);
        const intervalWordpress = setInterval(function () {
            barPaint(wordpress, 18, 8, intervalWordpress);
        }, 100);
    }
}

function barPaint(id_bar, amount, index, interval) {
    counters[index]++;
    x = counters[index];
    if (x < amount) {
        let elements = id_bar.getElementsByClassName("e");
        elements[x].style.backgroundColor = "#940253";
    } else {
        clearInterval(interval)
    }
}

//I detect mouse scrolling to apply the bar animation
window.onscroll = function () {
    effectSkills();
}
