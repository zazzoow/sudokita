let httpRequest = new XMLHttpRequest();

// console.log(httpRequest);

httpRequest.open("GET","controller/sudokitaController.php?q=",true);
httpRequest.send();

httpRequest.onreadystatechange = function() {
    if(httpRequest.readyState == XMLHttpRequest.DONE) {
      if(httpRequest.status === 200) {
          let obj = JSON.parse(this.responseText);
          console.log(obj[0].name);
          document.getElementById("lol").src = obj[0].name;
        }
      }
}

console.log(httpRequest.responseText);
