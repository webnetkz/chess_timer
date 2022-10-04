///////////////////////////////////////////////////////////////////////////////////////////////
//
// COUNTRY
//
function showSCountry() {
  document.querySelector(".b").style.top = "0";
  document.querySelector("#sCountry").style.zIndex = "3";
  document.querySelector("#sCountry").classList.remove("select");
  document.querySelector("#sCountry").innerHTML = `<div class="selectContent">
    <div class="headS nst" onclick="closeSCountry();">Страна / Гражданство ▼</div>
    <div class="noSelect hoverBtn" country="1" onclick="takeCountry(this);">${countries[0]['result']}</div>
    <div class="noSelect hoverBtn" country="2" onclick="takeCountry(this);">${countries[1]['result']}</div>
    <div class="noSelect hoverBtn" country="3" onclick="takeCountry(this);">${countries[2]['result']}</div>
    <div class="noSelect hoverBtn" country="4" onclick="takeCountry(this);">${countries[3]['result']}</div>
    <div class="noSelect hoverBtn" country="5" onclick="takeCountry(this);">${countries[4]['result']}</div>
    </div>`;

    let tmp = localStorage.getItem("country");
    if(tmp != null) {
      let allSelects = document.querySelectorAll("#sCountry .noSelect");
      for(let i = 0; i < allSelects.length; i++) {
        if(allSelects[i].textContent == tmp) {
          allSelects[i].classList.remove("noSelect");
        }
      }
    }

}
function closeSCountry() {
  document.querySelector("#sCountry").style.zIndex = "1";
  document.querySelector(".b").style.top = "-100vh";
  document.querySelector("#sCountry").classList.add("select");
  document.querySelector('#sCountry').innerHTML = `<div onclick="showSCountry()" class="nst">
            Страна / Гражданство ▼
            </div>`;
}
function takeCountry(elem) {
  closeSCountry();
  localStorage.setItem("country", elem.innerHTML);
  let resCountry = document.querySelector("#resCountry");
  let selected = document.querySelector(".selectCountry");
  if(selected != null) {
    selected.classList.remove("selectCountry");
    selected.classList.add("noSelect");
  }
  resCountry.innerHTML = elem.innerHTML;
  elem.classList.remove("noSelect");
  elem.classList.add("selectCountry");
  document.querySelector(".topCountry").innerHTML = elem.innerHTML;

  setData(H+"/app/core/data/setSelects.php?v="+elem.getAttribute("country")+"&type=country&ord="+ORD);
}