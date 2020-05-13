let httpRequest = new XMLHttpRequest();
let rightArrow = document.getElementById("slider-next");
let leftArrow = document.getElementById("slider-previous");
let div = document.getElementById("lol");
let i = 0;
let j = 0;
let k = 0;
let print = '';
///////////////////////////////////////////////////
////////////////////////////////////////////////////
///////////////////function////////////////////////
function carrousel(img,slider) {
    indexChange(slider);
    addImage(img);
   };

function addImage(img) {
  // console.log(i);
  let count = 6;

  reboot(img);
  localStorage.getItem("image",i);
  // console.log(i);

  for(j + i ;j + i < count + i ; j++) {

      let images = document.createElement("img");
      images.width = "100";
      images.height = "100";

      if( ((i + j) < (img.length) && (j + i) >= 0) || (j + i) <= ( -1 * img.length) || k == img.length ) {
        console.log("neutre");
       images.src = img[j + i];
       k = 0;
       localStorage.setItem('k',k);
      }

      else if((i + j) < 0) {
        console.log("--");
        console.log(i);
        images.src = img[img.length + i + j];
      }

       else if( (i + j) >= (img.length) ) {
         localStorage.setItem('k',k);
         console.log(i);
         // console.log(j);
         console.log("++");
         images.src = img[k];
         k++;
         localStorage.setItem('k',k);
         // images.src = img[4];
      }

      print += '<img src = '+ images.src +' width = '+ images.width +' height = '+  images.height +'>';

    div.innerHTML = print;
    localStorage.setItem("image",i);
   };

};
function reboot(img) {
   j = 0;
   print = '';

   if(i == img.length || i == -img.length) {
      i = 0;
     return localStorage.setItem("image",i);
   };
};

function indexChange(slider) {
  // console.log(i);
  localStorage.getItem("image",i);
  switch(slider) {
      case "next":
           i++;
      break;
      case "previous":
          i--;
      break;
   };
};
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
//////////////////action////////////////////////


httpRequest.open("GET","controller/gethintController.php?q=",true);
httpRequest.send();

httpRequest.onreadystatechange = function() {
    if(httpRequest.readyState == XMLHttpRequest.DONE) {
      if(httpRequest.status === 200) {
          let img = JSON.parse(this.responseText);

          addImage(img);
          rightArrow.addEventListener("click", function() {
              carrousel(img,'next');
          });
          leftArrow.addEventListener("click", function() {
              carrousel(img,'previous');
          });
        }
      }
}
