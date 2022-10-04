// Отображает\Скрывает выбор опций дня
/*================================================*/
function showDayWindow(elem) {
  if(!elem.classList.contains("hiddenDayWindow")) {
    elem.classList.add('hiddenDayWindow');
    let contentBlock = elem.parentNode.parentNode.parentNode.parentNode.querySelector(".resultServices");
    contentBlock.classList.add("hiddenElement");
    setTimeout(() => {
      elem.parentNode.parentNode.parentNode.parentNode.querySelector("h4").style.display = "none";
      elem.parentNode.parentNode.parentNode.parentNode.querySelector(".resultServices").style.display = "none";  
    }, 300);
  } else {
    elem.classList.remove("hiddenDayWindow");
    let contentBlock = elem.parentNode.parentNode.parentNode.parentNode.querySelector(".resultServices");
    elem.parentNode.parentNode.parentNode.parentNode.querySelector(".resultServices").style.display = "block";
    contentBlock.classList.remove("hiddenElement");
    elem.parentNode.parentNode.parentNode.parentNode.querySelector("h4").style.display = "block";
  }
}
/*================================================*/

function createNewDayWindow(day) {
  let tamplate = `<div id="mainResultContent">
  <h4 class="hiddenElement">Программа заказа</h4>
  <div class="yelHead">
    <div class="yelHeadContent">
      <div>
        <div class="day" onclick="showDayWindow(this)">День №${day}</div>
      </div>
      <div class="location flex betweenJC centerAI">
        <div class="flex centerAI betweenJC hoverBtn appendLocationsBtn nst" onclick="showAllLocations('${day}');">
          <span class="appendText nst">Добавить<br>локацию</span>
          <img src="${H}/public/img/icons/append.svg" class="appendBtn">
        </div>
        <div class="setLocations${day} setLocations">
          <select name="getLocations" id="getLocations" class="getLocations getLocations${day}">
              
          
          </select>
          
        </div>
      </div>
      <div class="flex betweenJC centerAI">
        <div class="timeDistance">
          <div>
            <img src="${H}/public/img/icons/clock.svg"><span class="result">0</span>часов <span class="result">0</span>минут
          </div>
          <div>
            <img src="${H}/public/img/icons/distance.svg"><span class="result">0</span>километров
          </div>
        </div>
        <div class="help hoverBtn" onclick="popup(this, 'Общее время и дистанция на текущий день')">
          <img src="${H}/public/img/icons/help.svg">
        </div>
      </div>
    </div>
  </div>
  
  <div class="resultServices">
    <div class="resultServicesContent">
      <div class="search">
        <img src="${H}/public/img/icons/search2.svg" class="search2"> Высокий сезон • Стандартный уровень 
      </div>
      <div class="getServices">

          <div class="service">
            <hr>
            <div class=" flex betweenJC centerAI">
              <img src="${H}/public/img/icons/calculator/car.svg" class="hoverBtn">
              <p>Добавить трансфер между двумя точками</p>
            </div>
            <div class="icons flex betweenJC centerAI">
              <div onclick="popup(this, 'Добавить трансфер между двумя точками')">
                <img src="${H}/public/img/icons/calculator/i.svg" class="hoverBtn">
              </div>
              <img src="${H}/public/img/icons/calculator/close.svg" class="hoverBtn">
            </div>
          </div>

          <div class="service">
            <hr>
            <div class=" flex betweenJC centerAI">
              <img src="${H}/public/img/icons/calculator/carTime.svg" class="hoverBtn">
              <p>Добавить транспортные услуги по городу</p>
            </div>
            <div class="icons flex betweenJC centerAI">
              <div onclick="popup(this, 'Добавить транспортные услуги по городу')">
                <img src="${H}/public/img/icons/calculator/i.svg" class="hoverBtn">
              </div>
              <img src="${H}/public/img/icons/calculator/close.svg" class="hoverBtn">
            </div>
          </div>

          <div class="service">
            <hr>
            <div class=" flex betweenJC centerAI">
              <img src="${H}/public/img/icons/calculator/canatka.svg" class="hoverBtn">
              <p>Выбрать объекты посещения по городу</p>
            </div>
            <div class="icons flex betweenJC centerAI">
              <div onclick="popup(this, 'Выбрать объекты посещения по городу')">
                <img src="${H}/public/img/icons/calculator/i.svg" class="hoverBtn">
              </div>
              <img src="${H}/public/img/icons/calculator/close.svg" class="hoverBtn">
            </div>
          </div>

          <div class="service">
            <hr>
            <div class=" flex betweenJC centerAI">
              <img src="${H}/public/img/icons/calculator/guide.svg" class="hoverBtn">
              <p>Добавить гида/гида-переводчика</p>
            </div>
            <div class="icons flex betweenJC centerAI">
              <div onclick="popup(this, 'Добавить гида/гида-переводчика')">
                <img src="${H}/public/img/icons/calculator/i.svg" class="hoverBtn">
              </div>
              <img src="${H}/public/img/icons/calculator/close.svg" class="hoverBtn">
            </div>
          </div>

          <div class="service">
            <hr>
            <div class=" flex betweenJC centerAI">
              <img src="${H}/public/img/icons/calculator/food.svg" class="hoverBtn">
              <p>Добавить питание. Обеды, ужины, другое</p>
            </div>
            <div class="icons flex betweenJC centerAI">
              <div onclick="popup(this, 'Добавить питание. Обеды, ужины, другое')">
                <img src="${H}/public/img/icons/calculator/i.svg" class="hoverBtn">
              </div>
              <img src="${H}/public/img/icons/calculator/close.svg" class="hoverBtn">
            </div>
          </div>

          <div class="service">
            <hr>
            <div class=" flex betweenJC centerAI">
              <img src="${H}/public/img/icons/calculator/dop.svg" class="hoverBtn">
              <p>Выбрать дополнительные услуги</p>
            </div>
            <div class="icons flex betweenJC centerAI">
              <div onclick="popup(this, 'Выбрать дополнительные услуги')">
                <img src="${H}/public/img/icons/calculator/i.svg" class="hoverBtn">
              </div>
              <img src="${H}/public/img/icons/calculator/close.svg" class="hoverBtn">
            </div>
          </div>

          <div class="service">
            <hr>
            <div class=" flex betweenJC centerAI">
              <img src="${H}/public/img/icons/calculator/bed.svg" class="hoverBtn">
              <p>Добавить место размещения/отель</p>
            </div>
            <div class="icons flex betweenJC centerAI">
              <div onclick="popup(this, 'Добавить место размещения/отель')">
                <img src="${H}/public/img/icons/calculator/i.svg" class="hoverBtn">
              </div>
              <img src="${H}/public/img/icons/calculator/close.svg" class="hoverBtn">
            </div>
          </div>
          <div>
            <img src="${H}/public/img/icons/calculator/bigPlus.svg" class="hoverBtn">
          </div>

      </div>
      <textarea class="comments">
      </textarea>
    </div>
  </div>
</div>`;
    let mainResult = document.querySelector("#mainResult");
    mainResult.innerHTML += tamplate;

    
  let getLocations = document.querySelector(".getLocations"+day);
  for(let city of allLocations) {
    getLocations.innerHTML += `
      <option value="${city}">${city}</option>
    `;
  }
}