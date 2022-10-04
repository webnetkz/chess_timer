///////////////////////////////////////////////////////////////////////////////////////////////
//
// Peoples
//
function showPackPeoples() {
  if(document.querySelector("#packPeoples") != null) {
  } else {
    document.querySelector("#sPeoples").innerHTML += `<div class="selectContent" id="packPeoples">
    <div style="margin-top: 7px;">Выберите желаемые опции</div>
    <div style="margin-top: 7px; opacity: 0.6;">Отетить все <input type="radio" class="pack" id="packAll" onchange="packAll();"><label for="packAll"></label></div>
      <div class="packPeoplesContent">
        <div class="packPeoplesContentLine">
          <div>1<input type="radio" id="pack1" class="pack"><label for="pack1"></label></div>
          <div>11<input type="radio" id="pack11" class="pack"><label for="pack11"></label></div>
          <div>21<input type="radio" id="pack21" class="pack"><label for="pack21"></label>
          </div>
          <div>31<input type="radio" id="pack31" class="pack"><label for="pack31"></label>
          </div>
          <div>41<input type="radio" id="pack41" class="pack"><label for="pack41"></label>
          </div>
        </div>
        
        <div class="packPeoplesContentLine">
          <div>2<input type="radio" id="pack2" class="pack"><label for="pack2"></label>
          </div>
          <div>12<input type="radio" id="pack12" class="pack"><label for="pack12"></label>
          </div>
          <div>22<input type="radio" id="pack22" class="pack"><label for="pack22"></label>
          </div>
          <div>32<input type="radio" id="pack32" class="pack"><label for="pack32"></label>
          </div>
          <div>42<input type="radio" id="pack42" class="pack"><label for="pack42"></label>
          </div>
        </div>

      <div class="packPeoplesContentLine">
        <div>3<input type="radio" id="pack3" class="pack"><label for="pack3"></label>
        </div>
        <div>13<input type="radio" id="pack13" class="pack"><label for="pack13"></label>
        </div>
        <div>23<input type="radio" id="pack23" class="pack"><label for="pack23"></label>
        </div>
        <div>33<input type="radio" id="pack33" class="pack"><label for="pack33"></label>
        </div>
        <div>43<input type="radio" id="pack43" class="pack"><label for="pack43"></label>
        </div>
      </div>

      <div class="packPeoplesContentLine">
        <div>4<input type="radio" id="pack4" class="pack"><label for="pack4"></label>
        </div>
        <div>14<input type="radio" id="pack14" class="pack"><label for="pack14"></label>
        </div>
        <div>24<input type="radio" id="pack24" class="pack"><label for="pack24"></label>
        </div>
        <div>34<input type="radio" id="pack34" class="pack"><label for="pack34"></label>
        </div>
        <div>44<input type="radio" id="pack44" class="pack"><label for="pack44"></label>
        </div>
      </div>

      <div class="packPeoplesContentLine">
        <div>5<input type="radio" id="pack5" class="pack"><label for="pack5"></label>
        </div>
        <div>15<input type="radio" id="pack15" class="pack"><label for="pack15"></label>
        </div>
        <div>25<input type="radio" id="pack25" class="pack"><label for="pack25"></label>
        </div>
        <div>35<input type="radio" id="pack35" class="pack"><label for="pack35"></label>
        </div>
        <div>45<input type="radio" id="pack45" class="pack"><label for="pack45"></label>
        </div>
      </div>
        
      <div class="packPeoplesContentLine">
        <div>6<input type="radio" id="pack6" class="pack"><label for="pack6"></label>
        </div>
        <div>16<input type="radio" id="pack16" class="pack"><label for="pack16"></label>
        </div>
        <div>26<input type="radio" id="pack26" class="pack"><label for="pack26"></label>
        </div>
        <div>36<input type="radio" id="pack36" class="pack"><label for="pack36"></label>
        </div>
        <div>46<input type="radio" id="pack46" class="pack"><label for="pack46"></label>
        </div>
      </div>

      <div class="packPeoplesContentLine">
        <div>7<input type="radio" id="pack7" class="pack"><label for="pack7"></label>
        </div>
        <div>17<input type="radio" id="pack17" class="pack"><label for="pack17"></label>
        </div>
        <div>27<input type="radio" id="pack27" class="pack"><label for="pack27"></label>
        </div>
        <div>37<input type="radio" id="pack37" class="pack"><label for="pack37"></label>
        </div>
        <div>47<input type="radio" id="pack47" class="pack"><label for="pack47"></label>
        </div>
      </div>

      <div class="packPeoplesContentLine">
        <div>8<input type="radio" id="pack8" class="pack"><label for="pack8"></label>
        </div>
        <div>18<input type="radio" id="pack18" class="pack"><label for="pack18"></label>
        </div>
        <div>28<input type="radio" id="pack28" class="pack"><label for="pack28"></label>
        </div>
        <div>38<input type="radio" id="pack38" class="pack"><label for="pack38"></label>
        </div>
        <div>48<input type="radio" id="pack48" class="pack"><label for="pack48"></label>
        </div>
      </div>
        
      <div class="packPeoplesContentLine">
        <div>9<input type="radio" id="pack9" class="pack"><label for="pack9"></label>
        </div>
        <div>19<input type="radio" id="pack19" class="pack"><label for="pack19"></label>
        </div>
        <div>29<input type="radio" id="pack29" class="pack"><label for="pack29"></label>
        </div>
        <div>39<input type="radio" id="pack39" class="pack"><label for="pack39"></label>
        </div>
        <div>49<input type="radio" id="pack49" class="pack"><label for="pack49"></label>
        </div>
      </div>
    
      <div class="packPeoplesContentLine">
        <div style="margin-left: -7px;">10<input type="radio" id="pack10" class="pack"><label for="pack10"></label>
        </div>
        <div>20<input type="radio" id="pack20" class="pack"><label for="pack20"></label>
        </div>
        <div>30<input type="radio" id="pack30" class="pack"><label for="pack30"></label>
        </div>
        <div>40<input type="radio" id="pack40" class="pack"><label for="pack40"></label>
        </div>
        <div>50<input type="radio" id="pack50" class="pack"><label for="pack50"></label>
        </div>
      </div>
      </div>
    </div>`;
  }
}


// Включает все дополнительные опции 
/*================================================*/
function packAll() {
  let allPackElements = document.querySelectorAll(".pack");
  for(let i = 0; i < allPackElements.length; i++) {
    allPackElements[i].checked = true;
  }

  setData(H+"/app/core/data/setSelects.php?v=99&type=rumming_one&ord="+ORD);
  localStorage.setItem("rumming_one", "99");
  let rummingBtn = document.querySelector("#sRum");
  rummingBtn.querySelector("div").removeAttribute("onclick");
  closeSPeoples();
}
/*================================================*/


function showSPeoples() {
  document.querySelector("#sPeoples").style.zIndex = "3";
  document.querySelector("#sPeoples").classList.remove("select");
  document.querySelector(".b").style.top = "0vh";
  document.querySelector("#sPeoples").innerHTML = `
  <div class="selectContent">
    <div class="headS nst" onclick="closeSPeoples();">Количество человек ▼</div>
    <div style="margin-top: 7px;" class="nst">Взрослые (от 13 лет) <input type="text" class="smallInp" value="0" id="adult" onchange="countMans(this)" onfocus="this.value =''"></div>
    <div style="margin-top: 7px;" class="nst">Дети (7-12 лет) <input type="text" class="smallInp" value="0" id="child" onchange="countMans(this)" onfocus="this.value =''"></div>
    <div style="margin-top: 7px;" class="nst">Дети (3-6 лет) <input type="text" class="smallInp" value="0" id="small_child" onchange="countMans(this)" onfocus="this.value =''"></div>
    <div style="margin-top: 7px;" class="nst">Младенцы (до 3 лет) <input type="text" class="smallInp" value="0" id="baby" onchange="countMans(this)" onfocus="this.value =''"></div>
    <br>
    <div style="margin-top: 7px;" class="nst">Турлидер <input type="text" class="smallInp" value="0" id="guide" onchange="countMans(this)" onfocus="this.value =''"></div>
    
    <div class="headS nst" style="text-align: left; opacity: 0.6" onclick="showPackPeoples();">Опциональный расчет ▼<br> (указать опции по <br>количеству) </div>
    </div>`;
  
    let adultData = localStorage.getItem("adult");
    if(adultData != null) {
      let adult = document.querySelector("#adult");
      adult.value = adultData;
    }
    let childData = localStorage.getItem("child");
    if(childData != null) {
      let child = document.querySelector("#child");
      child.value = childData;
    }
    let smallChildData = localStorage.getItem("small_child");
    if(smallChildData != null) {
      let smallChild = document.querySelector("#small_child");
      smallChild.value = smallChildData;
    }
    let babyData = localStorage.getItem("baby");
    if(babyData != null) {
      let baby = document.querySelector("#baby");
      baby.value = babyData;
    }
    let guideData = localStorage.getItem("guide");
    if(guideData != null) {
      let guide = document.querySelector("#guide");
      guide.value = guideData;
    }
}
function closeSPeoples() {
  document.querySelector("#sPeoples").style.zIndex = "1";
  document.querySelector(".b").style.top = "-100vh";
  document.querySelector("#sPeoples").classList.add("select");
  document.querySelector('#sPeoples').innerHTML = `<div onclick="showSPeoples()" class="nst">
            Количество человек ▼
            </div>`;
}
function countMans(elem) {
  
  if(elem.value == '' || elem.value == null) { elem.value = 0;}

  localStorage.setItem(elem.id, elem.value);

  if(elem.id == "guide") {
    let allPersonal = document.querySelector("#allPersonal");
    allPersonal.innerHTML = Number(elem.value);
    
    document.querySelector("#guideResultOne").innerHTML = Number(elem.value);
    document.querySelector("#guideResultTwo").innerHTML = Number(elem.value);
    
    document.querySelector(".topMans").innerHTML = Number(allPersonal.innerHTML) + Number(elem.value);

    closeSPeoples();
  } else {

    let res = document.querySelector("#res_"+elem.id);
    res.innerHTML = elem.value;
  }

  let adult = localStorage.getItem("adult");   if(adult == "-") { adult = 0;}
  let child = localStorage.getItem("child");   if(child == "-") { child = 0;}
  let small_child = localStorage.getItem("small_child");   if(small_child == "-") { small_child = 0;}
  let baby = localStorage.getItem("baby");   if(baby == "-") { baby = 0;}

  let nowAllMans = Number(adult) + Number(child) + Number(small_child) + Number(baby);

  setData(H+"/app/core/data/setSelects.php?v="+elem.value+"&type="+elem.id+"&ord="+ORD);
  setData(H+"/app/core/data/setSelects.php?v="+nowAllMans+"&type=all_mans&ord="+ORD);

  localStorage.setItem("all_mans", nowAllMans);
  document.querySelector("#all_res_people").innerHTML = localStorage.getItem("all_mans");
}