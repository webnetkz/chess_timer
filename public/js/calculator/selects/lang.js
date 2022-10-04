///////////////////////////////////////////////////////////////////////////////////////////////
//
// LANG
//
function showSLang() {
  document.querySelector("#sLang").style.zIndex = "3";
  document.querySelector("#sLang").classList.remove("select");
  document.querySelector(".b").style.top = "0";
  document.querySelector("#sLang").innerHTML = `
  <div class="selectContent">
    <div class="headS nst" onclick="closeSLang();">Язык обслуживания ▼</div>
    <div class="noSelect hoverBtn nst" lang="1" onclick="takeLang(this);">${langs[0].result}</div>
    <div class="noSelect hoverBtn nst" lang="2" onclick="takeLang(this);">${langs[1].result}</div>
    <div class="noSelect hoverBtn nst" lang="3" onclick="takeLang(this);">${langs[2].result}</div>
    <div class="noSelect hoverBtn nst" lang="4" onclick="takeLang(this);">${langs[3].result}</div>
    <div class="noSelect hoverBtn nst" lang="5" onclick="takeLang(this);">${langs[4].result}</div>
    </div>`;

  let tmp = localStorage.getItem("lang");
  if(tmp != null) {

    let allSelectsLang = document.querySelectorAll("#sLang .noSelect");
    for(let i = 0; i < allSelectsLang.length; i++) {
      if(allSelectsLang[i].textContent == tmp) {
        allSelectsLang[i].classList.remove("noSelect");
      }
    }
  }
}
function closeSLang() {
  document.querySelector("#sLang").style.zIndex = "1";
  document.querySelector(".b").style.top = "-100vh";
  document.querySelector("#sLang").classList.add("select");
  document.querySelector('#sLang').innerHTML = `<div onclick="showSLang()" class="nst">
            Язык обслуживания ▼
            </div>`;
}
function takeLang(elem) {
  closeSLang();
  localStorage.setItem("lang", elem.innerHTML);
  let resLang = document.querySelector("#resLang");
  resLang.innerHTML = elem.innerHTML;
  document.querySelector(".topLang").innerHTML = elem.innerHTML

  setData(H+"/app/core/data/setSelects.php?v="+elem.getAttribute("lang")+"&type=lang&ord="+ORD);
}