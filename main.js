// Открывает приложение во весь экран
document.addEventListener('click', function (event) {
  if (!document.fullscreenElement) {
    document.documentElement.requestFullscreen();
  }
}, false);

// Устанавливает стартовое время
let timeOftimer = prompt("Введите время в секундах");

var timer = 0;
isNaN(timeOftimer) ? timeOftimer = 180 : timeOftimer = Number(timeOftimer);
const tmp = timeOftimer;


let one = document.querySelector('#one');
let two = document.querySelector('#two');
let oneTimer = {sec: tmp, mil: 0};
let twoTimer = {sec: tmp, mil: 0};

one.querySelector(".seconds").innerText = oneTimer.sec;
two.querySelector(".seconds").innerText = twoTimer.sec;
two.addEventListener("click", startTimer(one, two));

function startTimer(one, two) {
  two.removeAttribute("click");
  one.setAttribute("onmousemove", "changeTimer(this)");
  two.setAttribute("onmousemove", "changeTimer(this)");
}

function minusTime(block, timer) {
  let interval = setInterval(function() {
   if(timer.mil == 0) {
    timer.mil = 9;
    timer.sec -= 1;
   } else {
    if(timer.sec == 0 && timer.mil == 1) {
      clearInterval(interval);
      block.innerText = "=)";
      return;
    }
    timer.mil -= 1;
   }
   block.querySelector(".seconds").innerText = timer.sec;
   block.querySelector(".miliseconds").innerText = timer.mil;
  }, 100);
  return interval;
}

function changeTimer(elem) {
  const idNow = elem.id;
  clearInterval(timer);
  elem.style.background = "#1E1E1E";

  if(idNow == "two") {
    timer = minusTime(one, twoTimer);
    one.style.background = "red";
  } else {
    timer = minusTime(two, oneTimer);
    two.style.background = "red";
  }
}