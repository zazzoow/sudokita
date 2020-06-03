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

    let scroll = document.querySelectorAll(".picture");
    let id = setInterval(frame, 200);
    let pos = 0;
    function frame() {
      console.log(scroll);

      if (pos == 20)
      {
        clearInterval(id);
      }
      else {
      pos++;
      for(let n = 0; n < 7 ; n++) {
      scroll[6 - n].style.right = pos +"%";
       }
     }
    }

    console.log(scroll);

    setTimeout(Request(search.value,"next"), 5000);
});

leftArrow.addEventListener("click", function() {




    let scroll = document.querySelectorAll(".picture");
    let id = setInterval(frame, 200);
    let pos = 0;
    function frame() {
      console.log(scroll);
      if (pos == 20)
      {
        clearInterval(id);
      }
      else {
      pos++;
      for(let n = 0; n < 7 ; n++) {
      scroll[n].style.left = pos +"%";

       }
     }
    }

    setTimeout(Request(search.value,"previous"), 5000);
});
