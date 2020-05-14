class Caroussel
{

 constructor(img,slider,i,k)
 {
   this.img = img;
   this.slider = slider;
   this.i = i;
   this.k = k;
 }

 carouss()
 {
   this.indexChange(this.slider);
   this.addImage(this.img);
 }

 setlocal(store,item) {
   localStorage.setItem(store,item);
 }

 getlocal(store,item) {
   localStorage.getItem(store,item);
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
    this.getlocal('i',this.i);
    console.log(this.getlocal('i',this.i));


    for(j + this.i ;j + this.i < count + this.i ; j++) {
      console.log(this.i,j);

        if( ((this.i + j) < (img.length) && (j + this.i) >= 0) || (j + this.i) <= ( -1 * img.length) || this.k == img.length ) {
           images.src = img[j + this.i];
           this.k = 0;
          this.setlocal('k',this.k);
        }

        else if((this.i + j) < 0) {
           images.src = img[img.length + this.i + j];
        }

        else if( (this.i + j) >= (img.length) ) {
           this.getlocal('k',this.k);
           images.src = img[this.k];
           this.k++;
           this.setlocal('k',this.k);

        }

        print += '<img src = '+ images.src +' width = '+ images.width +' height = '+  images.height +' href = ' + ' # ' + '>';

        }
        div.innerHTML = print;
        this.setlocal('i',this.i);
 }

  reboot(img)
 {
      if(this.i == img.length || this.i == -img.length) {
         this.i = 0;
      return this.setlocal('i',this.i);
      }
   }

  indexChange()
 {
   console.log(this.slider);
   switch(this.slider) {
       case "next":
            this.i = this.i + 1;
       break;
       case "previous":
           this.i = this.i - 1;
       break;
    }
    console.log(this.i);
   this.setlocal("ion",this.i);
   console.log(localStorage.setItem("ion",this.i));
 }
}
