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
