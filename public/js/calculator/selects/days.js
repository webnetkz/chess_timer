//
// Days
//
function showSDays() {
  document.querySelector("#sDays").style.zIndex = "3";
  document.querySelector(".b").style.top = "0";
  document.querySelector("#sDays").style.zIndex = "99";
  document.querySelector("#sDays").innerHTML = `<div class="selectContent" id="changeDays">
  <div class="headS nst" onclick="closeSDays();">Дней в программе ▼</div>
  <div class="allDays">
    <div class="lineDay">
      <div class="day day1 oneDay nst" onclick="countDays(this.innerHTML)">1</div>
      <div class="day day2 nst" onclick="countDays(this.innerHTML)">2</div>
      <div class="day day3 nst" onclick="countDays(this.innerHTML)">3</div>
      <div class="day day4 nst" onclick="countDays(this.innerHTML)">4</div>
      <div class="day day5 nst" onclick="countDays(this.innerHTML)">5</div>
    </div>
    <div class="lineDay">
      <div class="day day6 nst" onclick="countDays(this.innerHTML)">6</div>
      <div class="day day7 nst" onclick="countDays(this.innerHTML)">7</div>
      <div class="day day8 nst" onclick="countDays(this.innerHTML)">8</div>
      <div class="day day9 nst" onclick="countDays(this.innerHTML)">9</div>
      <div class="day day10 nst" onclick="countDays(this.innerHTML)">10</div>
    </div>
    <div class="lineDay">
      <div class="day day11 nst" onclick="countDays(this.innerHTML)">11</div>
      <div class="day day12 nst" onclick="countDays(this.innerHTML)">12</div>
      <div class="day day13 nst" onclick="countDays(this.innerHTML)">13</div>
      <div class="day day14 nst" onclick="countDays(this.innerHTML)">14</div>
      <div class="day day15 nst" onclick="countDays(this.innerHTML)">15</div>
    </div>
    <div class="lineDay">
      <div class="day day16 nst" onclick="countDays(this.innerHTML)">16</div>
      <div class="day day17 nst" onclick="countDays(this.innerHTML)">17</div>
      <div class="day day18 nst" onclick="countDays(this.innerHTML)">18</div>
      <div class="day day19 nst" onclick="countDays(this.innerHTML)">19</div>
      <div class="day day20 nst" onclick="countDays(this.innerHTML)">20</div>
    </div>
    <div class="lineDay">
      <div class="day day21 nst" onclick="countDays(this.innerHTML)">21</div>
      <div class="day day22 nst" onclick="countDays(this.innerHTML)">22</div>
      <div class="day day23 nst" onclick="countDays(this.innerHTML)">23</div>
      <div class="day day24 nst" onclick="countDays(this.innerHTML)">24</div>
      <div class="day day25 nst" onclick="countDays(this.innerHTML)">25</div>
    </div>
    <div class="lineDay">
      <div class="day day26 nst" onclick="countDays(this.innerHTML)">26</div>
      <div class="day day27 nst" onclick="countDays(this.innerHTML)">27</div>
      <div class="day day28 nst" onclick="countDays(this.innerHTML)">28</div>
      <div class="day day29 nst" onclick="countDays(this.innerHTML)">29</div>
      <div class="day day30 nst" onclick="countDays(this.innerHTML)">30</div>
    </div>
  </div>
  </div>
  </div>`;

  let tmp = localStorage.getItem("count_days");
    if(tmp != null) {
      let allSelects = document.querySelectorAll("#changeDays .day");
      for(let i = 0; i < allSelects.length; i++) {
        if(i < tmp) {
            allSelects[i].classList.add("lDay");
          }
      }
    }
}
function closeSDays() {
  document.querySelector("#sDays").style.zIndex = "1";
  document.querySelector(".b").style.top = "-100vh";
  document.querySelector("#sDays").style.zIndex = "0";
  document.querySelector("#sDays").classList.add("select");
  document.querySelector('#sDays').innerHTML = `<div onclick="showSDays()" class="nst">
            Дней в программе ▼
            </div>`;
}
function countDays(day) {
  localStorage.setItem("count_days", day);
  closeSDays();
  let resDays = document.querySelector("#resDays");
  resDays.innerHTML = day;
  document.querySelector(".topDays").innerHTML = day;

  setData(H+"/app/core/data/setSelects.php?v="+day+"&type=count_days&ord="+ORD);
  //location.reload();
}


setTimeout(() => {
  // Отображает новые блоки для выбора опций дня
  let days = localStorage.getItem("count_days");
  
  let startDay = 1;
  while(days) {
    createNewDayWindow(startDay);
    startDay += 1;
    days -= 1;
  }
}, 300);



