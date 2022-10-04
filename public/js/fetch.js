function getData(db, url) {
  var ajx = new XMLHttpRequest();
  ajx.onload = () => {
    localStorage.setItem(db, ajx.responseText);
  };
  ajx.open("GET", url, true);
  ajx.send();
}

// function setData(val, url, type, ord) {
//   var ajx = new XMLHttpRequest();
//   ajx.open('GET', url, true);
//   ajx.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
//   ajx.onreadystatechange = function() {
//       if(ajx.readyState === 4 && ajx.status === 200) {
//         console.log(ajx.responseText);
//       }
//   }
//   ajx.send('v=' + val + '&type=' + type + '&ord=' + ord)
// }
function setData(url) {
  var ajx = new XMLHttpRequest();
  ajx.onload = () => {
    console.log(ajx.responseText);
  };
  ajx.open("GET", url, true);
  ajx.send()
}

function setDatax(sendData, url) {
  var ajx = new XMLHttpRequest();
  ajx.onload = () => {
    console.log(ajx.responseText);
  };
  ajx.open("GET", url, true);
  ajx.send(sendData)
}