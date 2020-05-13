let httpRequest = new XMLHttpRequest();
let rightArrow = document.getElementById("slider-next");
let leftArrow = document.getElementById("slider-previous");
let div = document.getElementById("lol");
// let sans = document.getElementById("sans");
let i = 0;

///////////////////////////////////////////////////
////////////////////////////////////////////////////
///////////////////function////////////////////////
function carrousel(img,slider) {
    indexChange(slider);
    addImage(img);
   };


function addImage(img) {
  console.log(i);

  let print = '';
  let count = 6;
  let j = 0;

  reboot(count,img);
  localStorage.getItem("image",i);
  console.log(i);

  for(j = j + i ; j  + i < count + i ; j++) {

    let images = document.createElement("img");
    images.src = img[j + i];
    images.width = "100";
    images.height = "100";

    // sans.replaceWith(images);
    // console.log(i);
    print += '<img src = '+ images.src +' width = '+ images.width +' height = '+  images.height +'>';

  };

  div.innerHTML = print;
  localStorage.setItem("image",i);
};

function reboot(count,img) {
  if( i + count > img.length ) {
   i = 0;
   console.log(i);

   return localStorage.setItem("image",i);
  }
  else if ( i < 0 ) {
    i = img.length - count - 1;
    console.log(i);

    return localStorage.setItem("image",i);
  }
};

function indexChange(slider) {
  console.log(i);
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
