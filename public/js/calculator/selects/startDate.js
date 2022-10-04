//
// START DATE
//
function showSStart() {
  document.querySelector("#sStart").style.zIndex = "3";
  document.querySelector(".b").style.top = "0";
  document.querySelector("#sStart").classList.remove("select");
  document.querySelector("#sStart").innerHTML = `<div class="selectContent">
    <div class="headS nst" onclick="closeSStart();">Даты начала / Сезон ▼</div>
    <div class="noSelect hoverBtn nst" start_date="1992-01-01" onclick="takeStart(this);">${season[0].result}</div>
    <div class="noSelect hoverBtn nst" start_date="2001-01-01" onclick="takeStart(this);">${season[1].result}</div>
    <div class="noSelect hoverBtn nst" start_date="1999-01-01" onclick="takeStart(this);">${season[2].result}</div>
    <br>
    <div class="noSelect hoverBtn" style="margin-bottom: 3px;">Выбрать даты (календарь)</div><input id="getNewDate" type="date" onchange="takeStartDate(this.value);">
    </div>`;

    let tmp = localStorage.getItem("start_date");
    if(tmp != null) {
        let allSelects = document.querySelectorAll("#sStart .noSelect");
        for(let i = 0; i < allSelects.length; i++) {
          if(allSelects[i].getAttribute("start_date") == tmp) {
            allSelects[i].classList.remove("noSelect");
          }
        }
    }
}
function closeSStart() {
  document.querySelector("#sStart").style.zIndex = "1";
  document.querySelector(".b").style.top = "-100vh";
  document.querySelector("#sStart").classList.add("select");
  document.querySelector('#sStart').innerHTML = `<div onclick="showSStart()" class="nst">
  Даты начала / Сезон ▼
            </div>`;
}
function takeStart(elem) {
  closeSStart();
  localStorage.setItem("start_date", elem.innerHTML);
  let resStart = document.querySelector("#resStart");

  resStart.innerHTML = elem.innerHTML;

  let tmp = elem.getAttribute("start_date");
  switch(tmp) {
    case "1992-01-01":
      tmp = '1992-01-01';
    break;
    case "2001-01-01":
      tmp = '2001-01-01';
    break;
    case "1999-01-01":
      tmp = '1999-01-01';
    break;
  }

  setData(H+"/app/core/data/setSelects.php?v="+tmp+"&type=start_date&ord="+ORD);
}

function takeStartDate(elem) {
  console.log(elem);
  localStorage.setItem("start_date", elem);
  let resHotel = document.querySelector("#resStart");
  resHotel.innerHTML = elem.innerHTML;


  setData(H+"/app/core/data/setSelects.php?v="+elem+"&type=start_date&ord="+ORD);
}