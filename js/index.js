let httpRequest = new XMLHttpRequest();
let rightArrow = document.getElementById("slider-next");
let leftArrow = document.getElementById("slider-previous");
let div = document.getElementById("lol");
let i = 0;

///////////////////////////////////////////////////
////////////////////////////////////////////////////
///////////////////function////////////////////////
function carrousel(img,slider) {
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
    if( i == img.length ) {
      i = 0;
    }
    else if ( i < 0 ) {
      i = img.length - 1;
    };
    addImage(img,i) = img[i];
    console.log(i);
    localStorage.setItem("image",i);
   };


function addImage(img,i) {
  let count = 6;
  let j = 0;
  for( let j = 0 ; j < count + i ; j++) {
    let images = document.createElement("img");

    images.src = img[i];
    images.width = "100";
    images.height = "100"; //PAS FINI LA FONCTION EN COURS DE BUILDING
    console.log(images);
    div.appendChild(images);
    reboot(i,count,img);
  };
};

function reboot(i,count,img) {
  if( i + count = img.length ) {
   i = 0;
  }
};

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
//////////////////action////////////////////////

// mul.innerHTML = 'bb' * 5

httpRequest.open("GET","controller/gethintController.php?q=",true);
httpRequest.send();

httpRequest.onreadystatechange = function() {
    if(httpRequest.readyState == XMLHttpRequest.DONE) {
      if(httpRequest.status === 200) {
          let img = JSON.parse(this.responseText);
          console.log(img[1]);
          addImage(img);//dont forget
          rightArrow.addEventListener("click", function() {
              carrousel(img,'next');
          });
          leftArrow.addEventListener("click", function() {
              carrousel(img,'previous');
          });
        }
      }
}
