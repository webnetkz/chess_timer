///////////////////////////////////////////////////////////////////////////////////////////////
//
// Class
//
function showSClass() {
  document.querySelector(".b").style.top = "0px";
  document.querySelector("#sClass").classList.remove("select");
  document.querySelector("#sClass").style.zIndex = "3";
  document.querySelector("#sClass").innerHTML = `<div class="selectContent">
    <div class="headS nst" onclick="closeSClass();">Класс обслуживания ▼</div>
    <div class="noSelect hoverBtn selectClass nst" serviceclass="1" onclick="takeClass(this);">${serviceClass[0].result}</div>
    <div class="noSelect hoverBtn selectClass nst" serviceclass="2" onclick="takeClass(this);">${serviceClass[1].result}</div>
    <div class="noSelect hoverBtn selectClass nst" serviceclass="3" onclick="takeClass(this);">${serviceClass[2].result}</div>
    </div>`;

  let tmp = localStorage.getItem("class");
  if(tmp != null) {
    let allSelects = document.querySelectorAll("#sClass .noSelect");
    for(let i = 0; i < allSelects.length; i++) {
      if(allSelects[i].textContent == tmp) {
        allSelects[i].classList.remove("noSelect");
      }
    }
  }
}
function closeSClass() {
  document.querySelector(".b").style.top = "-100vh";
  document.querySelector("#sClass").style.zIndex = "1";
  document.querySelector("#sClass").classList.add("select");
  document.querySelector('#sClass').innerHTML = `<div onclick="showSClass()" class="nst">
            Класс обслуживания ▼
            </div>`;
}
function takeClass(elem) {
  closeSClass();
  localStorage.setItem("class", elem.innerHTML);
  let resClass = document.querySelector("#resClass");
  let selected = document.querySelector(".selectClass");
  if(selected != null) {
    selected.classList.remove("selectClass");
    selected.classList.add("noSelect");
  }
  resClass.innerHTML = elem.innerHTML;
  elem.classList.remove("noSelect");
  elem.classList.add("selectClass");

  setData(H+"/app/core/data/setSelects.php?v="+elem.getAttribute("serviceclass")+"&type=service_class&ord="+ORD);
}