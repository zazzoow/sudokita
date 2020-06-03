class Caroussel
{

 constructor(img,slider)
 {
   this.img = img;
   this.slider = slider;
   this.i = 0;
   this.k = 0;
   this.key = "previous";
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
   let print0 = '';
   let print1 ='';
   let print2 = '';
   let j = 0;
   let images = document.createElement("img");
   let div = document.getElementById("scrolled");
   let nothing = document.getElementById("nothing");


    this.reboot(img);
    this.getlocal(this.key,this.i);
    let count = this.counting(img);

   if (img.length == 0) {
       nothing.innerHTML = '<p>aucun resultat trouvé</p>';
       nothing.style.display = "block";
       div.style.display = "none";

     }
     else
     {
       nothing.style.display = "none";
       div.style.display = "flex";

        for(j + this.i ;j + this.i < count ; j++) {

                if(((this.i + j) < img.length) && (this.i + j >= 0 ) ) {
                  images.src = img[j + this.i].url;
                  images.name = img[j + this.i].name;
                }

                if((this.i + j) < 0) {
                   images.src = img[img.length + this.i + j].url;
                   images.name = img[img.length + this.i + j].name;
                }

                if( (this.i + j) >= img.length) {
                   images.src = img[(this.i + j) - (img.length)].url;
                   images.src2 = img[(this.i + j) - (img.length)].url;
                }

                if(j == 0) {
                  print0 += '<input class="picture" type = "image" name = '+ images.name +' src = '+ images.src + ' >';
                }
                else if ( (j > 0) && ((this.i + j) < (count - 1)) ) {
                  print1 += '<input class="picture" type = "image" name = '+ images.name +' src = '+ images.src + ' >';
                }
                else {
                  print2 += '<input class="picture" type = "image" name = '+ images.name +' src = '+ images.src + ' >';
                }


              console.log(this.i,j,count);

              this.setlocal(this.key,this.i);

          }
        div.innerHTML = print0 + print1 + print2;
       }
  }

 reboot(img)
 {
     if(this.i <= (-img.length + 1)  || (this.i >= (img.length - 1))) {
      this.i = 0;
       this.setlocal(this.key,this.i);
    }
 }

 counting(img)
 {
   let counting = 7;

    if(counting >= img.length) {
      this.i = 0;
      console.log(counting,img.length);
     return counting = img.length ;
  }
    else {
        this.getlocal(this.key,this.i);
        console.log(counting + this.i,img.length);
        return counting + this.i;
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
