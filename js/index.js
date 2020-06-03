let search = document.getElementById("search");
let rightArrow = document.getElementById("slider-next");
let leftArrow = document.getElementById("slider-previous");
let div = document.getElementById('scrolled');

window.localStorage.clear("left");


div.addEventListener("load", Request(search.value,"now"));

search.addEventListener("keyup", function() {

   Request(search.value,"now");
});

rightArrow.addEventListener("click", function() {

    transition(search.value,"right");
});

leftArrow.addEventListener("click", function() {

    transition(search.value,"left");
});
