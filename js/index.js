let search = document.getElementById("search");
let rightArrow = document.getElementById("slider-next");
let leftArrow = document.getElementById("slider-previous");
let div = document.getElementById('scrolled');
window.localStorage.clear("previous");


div.addEventListener("load", Request(search.value,"now"));

search.addEventListener("keyup", function() {
  Request(search.value,"now");
});

rightArrow.addEventListener("click", function() {
    Request(search.value,"next");
});

leftArrow.addEventListener("click", function() {
    Request(search.value,"previous");
});
