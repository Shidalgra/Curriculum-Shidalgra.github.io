//Menu lateral
var visible_menu = false;
let menu = document.getElementById("nav");
let nav_bar = document.getElementById("nav-bar");
let links = document.querySelectorAll("nav a");

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

    //   Agregar un event listener para cerrar el menú si se hace clic fuera de él
    document.addEventListener("click", function (event) {
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
let español = document.getElementById("español");
createBar(español);
let ingles = document.getElementById("ingles");
createBar(ingles);
let mvc = document.getElementById("mvc");
createBar(mvc);
let coreOcho = document.getElementById("coreOcho");
createBar(coreOcho);
let html = document.getElementById("html");
createBar(html);
let css = document.getElementById("css");
createBar(css);
let javascript = document.getElementById("javascript");
createBar(javascript);
let react = document.getElementById("react");
createBar(react);
let cSharp = document.getElementById("cSharp");
createBar(cSharp);
let java = document.getElementById("java");
createBar(java);
let sql = document.getElementById("sql");
createBar(sql);
let php = document.getElementById("php");
createBar(php);
let qa = document.getElementById("qa");
createBar(qa);
let uxui = document.getElementById("uxui");
createBar(uxui);

//I use an array to paint the bars that will be seen in each bar created, it starts at -1 because it starts counting from 0
let counters = [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1];
//this variable is the flag of the function
let intro = false;

//here is the function
function effectSkills() {
    var skills = document.getElementById("skills")
    var skills_distance = window.innerHeight - skills.getBoundingClientRect().top;
    if (skills_distance >= 300 && intro == false) {
        intro = true;

        const intervalEspañol = setInterval(function () {
            barPaint(español, 20, 0, intervalEspañol);
        }, 100);
        const intervalIngles = setInterval(function () {
            barPaint(ingles, 9, 1, intervalIngles);
        }, 100);
        const intervalMvc = setInterval(function () {
            barPaint(mvc, 16, 2, intervalMvc);
        }, 100);
        const intervalcoreOcho = setInterval(function () {
            barPaint(coreOcho, 15, 3, intervalcoreOcho);
        }, 100);
        const intervalHtml = setInterval(function () {
            barPaint(html, 17, 4, intervalHtml);
        }, 100);
        const intervalCss = setInterval(function () {
            barPaint(css, 18, 5, intervalCss);
        }, 100);
        const intervalJavascript = setInterval(function () {
            barPaint(javascript, 15, 6, intervalJavascript);
        }, 100);
        const intervalReact = setInterval(function () {
            barPaint(react, 14, 7, intervalReact);
        }, 100);
        const intervalCSharp = setInterval(function () {
            barPaint(cSharp, 17, 8, intervalCSharp);
        }, 100);
        const intervalJava = setInterval(function () {
            barPaint(java, 18, 9, intervalJava);
        }, 100);
        const intervalSql = setInterval(function () {
            barPaint(sql, 18, 10, intervalSql);
        }, 100);
        const intervalPhp = setInterval(function () {
            barPaint(php, 17, 11, intervalPhp);
        }, 100);
        const intervalQa = setInterval(function () {
            barPaint(qa, 17, 12, intervalQa);
        }, 100);
        const intervalUxui = setInterval(function () {
            barPaint(uxui, 16, 13, intervalUxui);
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
