
function showSRumming() {
  document.querySelector("#sRum").style.zIndex = "3";
  document.querySelector(".b").style.top = "0";
  document.querySelector("#sRum").classList.remove("select");
  document.querySelector("#sRum").innerHTML = `<div class="selectContent">
  <div class="headS nst" onclick="closeSRumming();">Руминг ▼</div>
  <div style="margin-top: 7px;" class="nst">Двухмест. номера<input type="text" class="smallInp" value="0" id="rumming_double" onchange="countRumming(this)" onfocus="this.value =''"></div>
  <div style="margin-top: 7px;" class="nst">Одномест. номера<input type="text" class="smallInp" value="0" id="rumming_one" onchange="countRumming(this)" onfocus="this.value =''"></div>
  <div style="margin-top: 7px;" class="nst">Трехмест. размещ.**<input type="text" class="smallInp" value="0" id="rumming_triple" onchange="countRumming(this)" onfocus="this.value =''"></div>
  
  <div class="headS nst" style="text-align: left; opacity: 0.6">Осталось человек для размещения: <div style="position: relative; top: 20px;left: -40px; font-size: 1.1rem;"><span id="countRumming">0</span>/${localStorage.getItem('all_mans')}</div> </div>
  </div>`;

  scoreRumming();

  let rumming_one_data = localStorage.getItem("rumming_one");
  if(rumming_one_data != null) {
    let rumming_one = document.querySelector("#rumming_one");
    rumming_one.value = rumming_one_data;
  }

  let rumming_double_data = localStorage.getItem("rumming_double");
  if(rumming_double_data != null) {
    let rumming_double = document.querySelector("#rumming_double");
    rumming_double.value = rumming_double_data;
  }

  let rumming_triple_data = localStorage.getItem("rumming_triple");
  if(rumming_triple_data != null) {
    let rumming_triple = document.querySelector("#rumming_triple");
    rumming_triple.value = rumming_triple_data;
  }

}
function closeSRumming() {
  document.querySelector("#sRum").style.zIndex = "1";
  document.querySelector(".b").style.top = "-100vh";
  document.querySelector("#sRum").classList.add("select");
  document.querySelector('#sRum').innerHTML = `<div onclick="showSRumming()" class="nst">
            Руминг ▼
            </div>`;
}

function countRumming(elem) {
  if(elem.value == '' || elem.value == null) { elem.value = 0;}
  
  localStorage.setItem(elem.id, elem.value);
  
  let res = document.querySelector("#res_"+elem.id);
  res.innerHTML = elem.value;

  scoreRumming();

  setData(H+"/app/core/data/setSelects.php?v="+elem.value+"&type="+elem.id+"&ord="+ORD);
}

function scoreRumming() {
  let rumming_one = localStorage.getItem("rumming_one");
  if(rumming_one != 0) {rumming_one = Number(rumming_one) + Number(rumming_one);} 
  let rumming_double = localStorage.getItem("rumming_double");
  if(rumming_double != 0) {rumming_double = Number(rumming_double) + Number(rumming_double);}
  let rumming_triple = localStorage.getItem("rumming_triple");
  if(rumming_triple != 0) {rumming_triple = Number(rumming_triple) + Number(rumming_triple) + Number(rumming_triple);}
  let allRumming = Number(rumming_one) + Number(rumming_double) + Number(rumming_triple);
  document.querySelector("#countRumming").innerHTML = allRumming;
}