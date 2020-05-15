let httpRequest = new XMLHttpRequest();
let search = document.getElementById("search");
let rightArrow = document.getElementById("slider-next");
let leftArrow = document.getElementById("slider-previous");


search.addEventListener("search", function() {

         let zep = this.value;
         console.log(zep);

          let db = JSON.stringify(zep);

       httpRequest.open("GET","controller/gethintController.php?x=" + db,true);
       httpRequest.open("GET","controller/gethintController.php?q=" + db,true);
       // httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
       // httpRequest.open("GET","controller/gethintController.php?q=",true);

       httpRequest.send();

      httpRequest.onreadystatechange = function() {

         if(httpRequest.readyState == XMLHttpRequest.DONE) {
           if(httpRequest.status === 200) {

                   // document.getElementById("lol").innerHTML = this.responseText;
                      // httpRequest.open("GET","controller/gethintController.php?q=",true);
                      // httpRequest.send();

                          // if(httpRequest.readyState == XMLHttpRequest.DONE) {
                          //   if(httpRequest.status === 200) {
                          //
                                let img = JSON.parse(this.responseText);
                                // console.log(img);
                                let carous = new Caroussel(img,"now");
                                carous.carouss();
                          //
                                rightArrow.addEventListener("click", function() {
                                    let carous = new Caroussel(img,"next");
                                    carous.carouss();
                                });
                                leftArrow.addEventListener("click", function() {
                                    let carous = new Caroussel(img,"previous");
                                    carous.carouss();
                                });
                          //     }
                          //   }
                }

          }

      }

});
