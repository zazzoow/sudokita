function Request(value,slider) {

      let httpRequest = new XMLHttpRequest();

      let db = JSON.stringify(value);

      httpRequest.open("GET","controller/gethintController.php?q=" + db,true);

       httpRequest.send();

       httpRequest.onreadystatechange = function() {
         if(httpRequest.readyState == XMLHttpRequest.DONE) {
            if(httpRequest.status === 200) {

                let img = JSON.parse(this.responseText);
                // console.log(img);

                carous = new Caroussel(img,slider);
                carous.carouss();

            }
         }
       };
}

function transition(value,slider) {

  let scroll = document.querySelectorAll(".picture");
  let pos = 0;
  let id = setInterval(frame, 10);

  function frame() {

      if (pos == 20)
      {
        clearInterval(id);
        Request(value,slider);
      }
      else {
      pos++;
      for(let n = 0; n < scroll.length ; n++) {
        if(slider == "left") {
         scroll[n].style.left = pos +"%";
        }
        else if (slider == "right") {
         scroll[n].style.right = pos +"%";  
        }
       }
     }

  }
}
