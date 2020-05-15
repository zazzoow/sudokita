class Caroussel
{

 constructor(img,slider)
 {
   this.img = img;
   this.slider = slider;
   this.i = 0;
   this.k = 0;
   this.key = "next";
   this.key2 = "previous";
   this.storage = window.localStorage;
 }

 carouss()
 {
   this.indexChange(this.slider);
   this.addImage(this.img);
 }

 setlocal(store,item) {
   this.storage.setItem(store,item);
 }

 getlocal(store,item) {
   return parseInt(this.storage.getItem(store,item));
 }
  addImage(img)
 {
   let print = '';
   let j = 0;
   let count = 6;
   let images = document.createElement("img");
   let div = document.getElementById("lol");

    images.width = "100";
    images.height = "100";

    this.reboot(img);
    this.getlocal(this.key,this.i);

    for(j + this.i ;j + this.i < img.length + this.i ; j++) {

              if( ((this.i + j) < (img.length) && (j + this.i) >= 0) || (j + this.i) <= ( -1 * img.length) || this.k >= img.length) {
                 this.k = 0;
                 images.src = img[j + this.i];
                 this.setlocal(this.key2,this.k);
              }

              else if((this.i + j) < 0) {
                 images.src = img[img.length + this.i + j];
              }

            else if( (this.i + j) >= (img.length) ) {
              if(!localStorage.hasOwnProperty(this.key2)) {
                 this.setlocal(this.key2,this.k);
               }
               this.k = this.getlocal(this.key2,this.k);
               images.src = img[this.k];
               this.k = (this.k) + 1;
               this.setlocal(this.key2,this.k);

            }
            if(j < count) {

               print += '<img src = '+ images.src +' width = '+ images.width +' height = '+  images.height +' href = ' + ' # ' + '>';

          }
          console.log(this.i,this.k);

          this.setlocal(this.key,this.i);
          div.innerHTML = print;

      }
    }

  reboot(img)
 {
      if(this.i >= (img.length - 1) || this.i <= (-img.length + 1)) {
         this.i = 0;
       this.setlocal(this.key,this.i);
     }
   }

  indexChange()
 {
   if(!localStorage.hasOwnProperty(this.key)) {
      this.setlocal(this.key,this.i);
    }

   this.i = this.getlocal(this.key,this.i);

   switch(this.slider) {
       case "next":
            this.i = (this.i) + 1;
       break;
       case "previous":
           this.i = (this.i) - 1;
       break;
       case "now":
       break;
    }

    this.setlocal(this.key,this.i);
 }
}
