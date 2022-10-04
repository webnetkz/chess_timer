// Отображение в панели результатов выбора
function checkSelects() {
  let days = localStorage.getItem("count_days");
  if(days != null) {
    document.querySelector("#resDays").innerHTML = days;
    document.querySelector(".topDays").innerHTML = days;
  }
  let lang = localStorage.getItem("lang");
  if(lang != null) {
    document.querySelector("#resLang").innerHTML = lang;
    document.querySelector(".topLang").innerHTML = lang;
  }
  let adult = localStorage.getItem("adult");
  if(adult != null) {
    document.querySelector("#res_adult").innerHTML = adult;
  }
  let child = localStorage.getItem("child");
  if(child != null) {
    document.querySelector("#res_child").innerHTML = child;
  }
  let small_child = localStorage.getItem("small_child");
  if(small_child != null) {
    document.querySelector("#res_small_child").innerHTML = small_child;
  }
  let baby = localStorage.getItem("baby");
  if(baby != null) {
    document.querySelector("#res_baby").innerHTML = baby;
  }
  let guide = localStorage.getItem("guide");
  if(guide != null) {
    document.querySelector("#guideResultOne").innerHTML = guide;
    document.querySelector("#guideResultTwo").innerHTML = guide;
    document.querySelector("#allPersonal").innerHTML = guide;
  }
  let all_res_people = localStorage.getItem("all_mans");
  if(all_res_people != null) {
    document.querySelector("#all_res_people").innerHTML = all_res_people;
    document.querySelector(".topMans").innerHTML = all_res_people;
  }
  let country = localStorage.getItem("country");
  if(country != null) {
    document.querySelector("#resCountry").innerHTML = country;
    document.querySelector(".topCountry").innerHTML = country;
  }
  let xclass = localStorage.getItem("class");
  if(xclass != null) {
    document.querySelector("#resClass").innerHTML = xclass;
  }
  let hotel = localStorage.getItem("hotel");
  if(hotel != null) {
    document.querySelector("#resHotel").innerHTML = hotel;
  }
  let start_date = localStorage.getItem("start_date");
  if(start_date != null) {
    document.querySelector("#resStart").innerHTML = start_date;
  }
  let rumming_one = localStorage.getItem("rumming_one");
  if(rumming_one != null) {
    if(rumming_one == "99") {
      let rummingBtn = document.querySelector("#sRum");
      rummingBtn.querySelector("div").removeAttribute("onclick");
    }
    document.querySelector("#res_rumming_one").innerHTML = rumming_one;
  }
  let rumming_double = localStorage.getItem("rumming_double");
  if(rumming_double != null) {
    document.querySelector("#res_rumming_double").innerHTML = rumming_double;
  }
  let rummingTriple = localStorage.getItem("rummingTriple");
  if(rummingTriple != null) {
    document.querySelector("#res_rumming_triple").innerHTML = rummingTriple;
  }
}

  