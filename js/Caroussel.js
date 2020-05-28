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
   let print = '';
   let print2 = '';
   let j = 0;
   let images = document.createElement("img");
   let div = document.getElementById("scrolled");
   let nothing = document.getElementById("nothing");

    // images.width = "100";
    // images.height = "100";

    this.reboot(img);
    this.getlocal(this.key,this.i);
    let count = this.counting(img);

   if (img.length == 0) {
       nothing.innerHTML = '<p>aucun resultat trouvé<p>';
       nothing.style.display = "block";
       // nothing.style.position= "relative";
       // nothing.style.left ="100%";
       // nothing.style.top = "30%";
       div.style.display = "none";
       // div.style.textAlign = "right";
     }
     else
     {
       nothing.style.display = "none";
       div.style.display = "flex";

        for(j + this.i ;j + this.i < count ; j++) {

                if(((this.i + j) < img.length) && (this.i + j >= 0 ) ) {
                  images.src = img[j + this.i].url;
                  images.name = img[j + this.i].name;
                  // images.src2 = img[(j + this.i) + 1].url;
                  // images.name2 = img[(j + this.i) + 1].name;
                }

                if((this.i + j) < 0) {
                   images.src = img[img.length + this.i + j].url;
                   images.name = img[img.length + this.i + j].name;
                   // images.src2 = img[(img.length + this.i + j) + 1].url;
                   // images.name2 = img[(img.length + this.i + j) + 1].name;
                }

                if( (this.i + j) >= img.length) {
                   images.src = img[(this.i + j) - (img.length)].url;
                   images.src2 = img[(this.i + j) - (img.length)].url;
                   // images.name = img[((this.i + j) - (img.length)) + 1].name;
                   // images.name2 = img[((this.i + j) - (img.length)) + 1].name;

                }

               print += '<input class="picture" type = "image" name = '+ images.name +' src = '+ images.src + ' >';
               // print2 += '<input type = "image" name = '+ images.name2 +' src = '+ images.src2 + ' >';

              console.log(this.i,j,count);

              this.setlocal(this.key,this.i);

          }
        div.innerHTML = print;
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
   let counting = 5;

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
