let httpRequest = new XMLHttpRequest();
let rightArrow = document.getElementById("slider-next");
let leftArrow = document.getElementById("slider-previous");

httpRequest.open("GET","controller/gethintController.php?q=",true);
httpRequest.send();

httpRequest.onreadystatechange = function() {
    if(httpRequest.readyState == XMLHttpRequest.DONE) {
      if(httpRequest.status === 200) {
          let img = JSON.parse(this.responseText);
          let carous = new Caroussel(img,"now");
          carous.carouss();

          rightArrow.addEventListener("click", function() {
              let carous = new Caroussel(img,"next");
              carous.carouss();
          });
          leftArrow.addEventListener("click", function() {
              let carous = new Caroussel(img,"previous");
              carous.carouss();
          });
        }
      }
}
