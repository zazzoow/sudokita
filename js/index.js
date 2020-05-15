let httpRequest = new XMLHttpRequest();
let search = document.getElementById("search").value;
let rightArrow = document.getElementById("slider-next");
let leftArrow = document.getElementById("slider-previous");

console.log(search);

httpRequest.onreadystatechange = function() {

   //  httpRequest.open("GET","controller/gethintController.php?x=" + JSON.stringify(search),true);
   //  httpRequest.send();
   //
   // if(httpRequest.readyState == XMLHttpRequest.DONE) {
   //   if(httpRequest.status === 200) {

                httpRequest.open("GET","controller/gethintController.php?q=",true);
                httpRequest.send();

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
    //       }
    //       document.getElementById('lol').innerHTML = "merde";
    // }

}
