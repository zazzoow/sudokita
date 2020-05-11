let httpRequest = new XMLHttpRequest();
let arrow = document.getElementById("carousel");
let i = 0;
// console.log(httpRequest);

httpRequest.open("GET","controller/gethintController.php?q=",true);
httpRequest.send();

httpRequest.onreadystatechange = function() {
    if(httpRequest.readyState == XMLHttpRequest.DONE) {
      if(httpRequest.status === 200) {
          let img = JSON.parse(this.responseText);
          console.log(img);
          document.getElementById("lol").src = img[1];
          arrow.addEventListener("click", function() {
              carrousel(img);
          });
        }
      }
}

function carrousel(img) {
   console.log(i);
   localStorage.getItem("image",i);
   document.getElementById("lol").src = img[i];
    i++;
     if(i == img.length) {
       i = 0;
     };
    console.log(i);
    localStorage.setItem("image",i);
   };
