//
// Hotel
//
function showSHotel() {
  document.querySelector("#sHotel").style.zIndex = "3";
  document.querySelector(".b").style.top = "0";
  document.querySelector("#sHotel").classList.remove("select");
  document.querySelector("#sHotel").innerHTML = `<div class="selectContent">
    <div class="headS nst" onclick="closeSHotel();">Категория отеля ▼</div>
    <div class="noSelect hoverBtn nst" hotel_class="1" onclick="takeHotel(this);">${hotelStars[0].result}</div>
    <div class="noSelect hoverBtn nst" hotel_class="2" onclick="takeHotel(this);">${hotelStars[1].result}</div>
    <div class="noSelect hoverBtn nst" hotel_class="3" onclick="takeHotel(this);">${hotelStars[2].result}</div>
    <div class="noSelect hoverBtn nst" hotel_class="4" onclick="takeHotel(this);">${hotelStars[3].result}</div>
    <div class="noSelect hoverBtn nst" hotel_class="5" onclick="takeHotel(this);">${hotelStars[4].result}</div>
    </div>`;

    let tmp = localStorage.getItem("hotel");
    if(tmp != null) {
        let allSelects = document.querySelectorAll("#sHotel .noSelect");
        for(let i = 0; i < allSelects.length; i++) {
          if(allSelects[i].textContent == tmp) {
            allSelects[i].classList.remove("noSelect");
          }
        }
    }
}
function closeSHotel() {
  document.querySelector("#sHotel").style.zIndex = "1";
  document.querySelector(".b").style.top = "-100vh";
  document.querySelector("#sHotel").classList.add("select");
  document.querySelector('#sHotel').innerHTML = `<div onclick="showSHotel()" class="nst">
            Категория отеля ▼
            </div>`;
}
function takeHotel(elem) {
  closeSHotel();
  localStorage.setItem("hotel", elem.innerHTML);
  let resHotel = document.querySelector("#resHotel");
  let selected = document.querySelector(".selectHotel");
  if(selected != null) {
    selected.classList.remove("selectHotel");
    selected.classList.add("noSelect");
  }
  resHotel.innerHTML = elem.innerHTML;
  elem.classList.remove("noSelect");
  elem.classList.add("selectHotel");

  setData(H+"/app/core/data/setSelects.php?v="+elem.getAttribute("hotel_class")+"&type=hotel_class&ord="+ORD);
}