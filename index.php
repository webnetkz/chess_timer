<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Chess Timer</title>
</head>
<body>
  <style>
    * {
      margin: 0;
      padding: 0;
      font-family: sans-serif;
    }
    .timer {
      width: 100vw;
      height: 100vh;
      background: #1E1E1E;
      display: flex;
      flex-direction: column;
      color: white;
    }
    .timer > div {
      width: 100%;
      height: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 20vh;
    }
    #two {
      background: red;
    }

  </style>


  <div class="timer">
    <div id="one">0</div>
    <div id="two">0</div>
  </div>

  <script>
    let timeOftimer = prompt("Введите время в секундах");
    isNaN(timeOftimer) ? timeOftimer = 180 : timeOftimer = Number(timeOftimer);


    let one = document.querySelector('#one');
    let two = document.querySelector('#two');

    one.innerText = timeOftimer;
    two.innerText = timeOftimer;

    two.addEventListener("click", startTimer(one, two));


    function startTimer(one, two) {
      two.removeAttribute("click");
      one.setAttribute("onclick", "changeTimer(this)");
      two.setAttribute("onclick", "changeTimer(this)");
    }

    function minusSec(elem) {
      setTimeout(() => {
        if(Number(elem.innerText) >= 1) {
          elem.innerText = Number(elem.innerText) - 1;
        }
      }, 1000);
    }

    function changeTimer(elem) {
      const idNow = elem.id;


      if(idNow == "two") {
        minusSec(elem);
      } else {
        minusSec(elem);
      }
    }

    console.log(timeOftimer);

  </script>

</body>
</html>