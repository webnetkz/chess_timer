<style>
  .selectServiceContainer {
    margin-bottom: 5px;
  }
  .selectServiceElement {
    box-sizing: border-box;
    height: 78px;
    background: #F2F2F2;
    border-radius: 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 9px 25px;
  }
  .selectServiceTitle span {
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 97.18%;
    display: flex;
    align-items: center;
    color: #0B2E4E;
  }
  .serviceAddIcons {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-left: 15px;
  }
  .serviceAddIcons img {
    width: 21px;
    height: 21px;
  }
  .selectServiceTitleTwo {
    font-style: normal;
    font-weight: 400;
    font-size: 12px;
    line-height: 97.18%;
    display: flex;
    align-items: center;
    color: #0B2E4E;
    opacity: 0.6;
    margin-top: 20px;
  }
  .summer {
    margin-top: 20px;
  }
  .selectServiceSeason div span, .selectServiceTotal span {
    font-style: normal;
    font-weight: 400;
    font-size: 12px;
    line-height: 97.18%;
    display: flex;
    align-items: center;
    color: #0B2E4E;
    margin-left: 10px;
  }
  .selectServiceSeason div {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .selectServiceCard {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .selectServiceCard img {
    margin-right: 10px;
  }
  .selectServiceNum {
    padding-left: 80px;
    padding-right: 40px;
  }
  .selectServiceTotal {
    display: flex;
    flex-direction: column;
  }
</style>


<div id="mainResult" style="margin-top: 40px">
<div id="mainResultContent">
  <div class="yelHead">
    <div class="yelHeadContent">
      <div>
        <div class="day">Дополнительные услуги на все дни</div>
      </div>
      <div class="flex betweenJC centerAI">
        <div class="timeDistance" style="visibility: hidden;">
          <div>
            <img src="<?=$host?>/public/img/icons/clock.svg"><span class="result">0</span>часов <span class="result">0</span>минут
          </div>
          <div>
            <img src="<?=$host?>/public/img/icons/distance.svg"><span class="result">0</span>километров
          </div>
        </div>
        <div class="help hoverBtn">
          <img src="<?=$host?>/public/img/icons/help.svg">
        </div>
      </div>
    </div>
  </div>

<div class="resultServices" style="height: 0px;">
  <div class="resultServicesContent">
    <div class="search">
      <img src="<?=$host?>/public/img/icons/search2.svg" class="search2"> Высокий сезон • Стандартный уровень 
    </div>
  </div>      
</div>

<div class="selectServiceContainer">
  <div class="selectServiceElement">
    <div class="selectServiceAdd">
      <img src="./public/img/icons/calculator/group.svg" class="hoverBtn" style="margin-right: -50px;">
    </div>
    <div class="selectServiceTitle">
      <div style="display: flex;">
        <span>Welcome Wi-Fi (Power bank + роутер по маршруту)</span>
        <div class="serviceAddIcons">
          <img src="./public/img/icons/calculator/arrowsTopBot.svg" class="hoverBtn">
          <img src="./public/img/icons/settingsC/change.svg" class="hoverBtn">
          <img src="./public/img/icons/calculator/i.svg" class="hoverBtn">
          <img src="./public/img/icons/calculator/plus.svg" style="opacity: 0.6" class="hoverBtn">
          <img src="./public/img/icons/calculator/close.svg" style="opacity: 0.6" class="hoverBtn">
        </div>
      </div>
      <div class="selectServiceTitleTwo">
        Прокат в Алматы, Нурсултане и областях • 1 wifi на 5-6 чел • Высокий сезон
      </div>
    </div>
    <div class="selectServiceSeason">
      <div class="winter">
        <img src="./public/img/icons/calculator/snow.svg">
        <span>1 000 KZT</span>
      </div>
      <div class="summer">
        <img src="./public/img/icons/calculator/sun.svg">
        <span>1 500 KZT</span>
      </div>
    </div>
    <div class="selectServiceCard">
      <img src="./public/img/icons/calculator/card.svg">
      <span>за штуку</span>
    </div>
    <div class="selectServiceNum">
      1
    </div>
    <div class="selectServiceTotal">
      <span style="opacity: 0.6; margin-bottom: 20px;">1 000 KZT</span>
      <span>1 500 KZT</span>
    </div>
  </div>
</div>


<div class="selectServiceContainer">
  <div class="selectServiceElement">
    <div class="selectServiceAdd">
      <img src="./public/img/icons/calculator/group.svg" class="hoverBtn" style="margin-right: -50px;">
    </div>
    <div class="selectServiceTitle">
      <div style="display: flex;">
        <span>Welcome Wi-Fi (Power bank + роутер по маршруту)</span>
        <div class="serviceAddIcons">
          <img src="./public/img/icons/calculator/arrowsTopBot.svg" class="hoverBtn">
          <img src="./public/img/icons/settingsC/change.svg" class="hoverBtn">
          <img src="./public/img/icons/calculator/i.svg" class="hoverBtn">
          <img src="./public/img/icons/calculator/plus.svg" style="opacity: 0.6" class="hoverBtn">
          <img src="./public/img/icons/calculator/close.svg" style="opacity: 0.6" class="hoverBtn">
        </div>
      </div>
      <div class="selectServiceTitleTwo">
        Прокат в Алматы, Нурсултане и областях • 1 wifi на 5-6 чел • Высокий сезон
      </div>
    </div>
    <div class="selectServiceSeason">
      <div class="winter">
        <img src="./public/img/icons/calculator/snow.svg">
        <span>1 000 KZT</span>
      </div>
      <div class="summer">
        <img src="./public/img/icons/calculator/sun.svg">
        <span>1 500 KZT</span>
      </div>
    </div>
    <div class="selectServiceCard">
      <img src="./public/img/icons/calculator/card.svg">
      <span>за штуку</span>
    </div>
    <div class="selectServiceNum">
      1
    </div>
    <div class="selectServiceTotal">
      <span style="opacity: 0.6; margin-bottom: 20px;">1 000 KZT</span>
      <span>1 500 KZT</span>
    </div>
  </div>
</div>


<div class="selectServiceContainer">
  <div class="selectServiceElement">
    <div class="selectServiceAdd">
      <img src="./public/img/icons/calculator/group.svg" class="hoverBtn" style="margin-right: -50px;">
    </div>
    <div class="selectServiceTitle">
      <div style="display: flex;">
        <span>Welcome Wi-Fi (Power bank + роутер по маршруту)</span>
        <div class="serviceAddIcons">
          <img src="./public/img/icons/calculator/arrowsTopBot.svg" class="hoverBtn">
          <img src="./public/img/icons/settingsC/change.svg" class="hoverBtn">
          <img src="./public/img/icons/calculator/i.svg" class="hoverBtn">
          <img src="./public/img/icons/calculator/plus.svg" style="opacity: 0.6" class="hoverBtn">
          <img src="./public/img/icons/calculator/close.svg" style="opacity: 0.6" class="hoverBtn">
        </div>
      </div>
      <div class="selectServiceTitleTwo">
        Прокат в Алматы, Нурсултане и областях • 1 wifi на 5-6 чел • Высокий сезон
      </div>
    </div>
    <div class="selectServiceSeason">
      <div class="winter">
        <img src="./public/img/icons/calculator/snow.svg">
        <span>1 000 KZT</span>
      </div>
      <div class="summer">
        <img src="./public/img/icons/calculator/sun.svg">
        <span>1 500 KZT</span>
      </div>
    </div>
    <div class="selectServiceCard">
      <img src="./public/img/icons/calculator/card.svg">
      <span>за штуку</span>
    </div>
    <div class="selectServiceNum">
      1
    </div>
    <div class="selectServiceTotal">
      <span style="opacity: 0.6; margin-bottom: 20px;">1 000 KZT</span>
      <span>1 500 KZT</span>
    </div>
  </div>
</div>


<div class="selectServiceContainer">
  <div class="selectServiceElement">
    <div class="selectServiceAdd">
      <img src="./public/img/icons/calculator/group.svg" class="hoverBtn" style="margin-right: -50px;">
    </div>
    <div class="selectServiceTitle">
      <div style="display: flex;">
        <span>Welcome Wi-Fi (Power bank + роутер по маршруту)</span>
        <div class="serviceAddIcons">
          <img src="./public/img/icons/calculator/arrowsTopBot.svg" class="hoverBtn">
          <img src="./public/img/icons/settingsC/change.svg" class="hoverBtn">
          <img src="./public/img/icons/calculator/i.svg" class="hoverBtn">
          <img src="./public/img/icons/calculator/plus.svg" style="opacity: 0.6" class="hoverBtn">
          <img src="./public/img/icons/calculator/close.svg" style="opacity: 0.6" class="hoverBtn">
        </div>
      </div>
      <div class="selectServiceTitleTwo">
        Прокат в Алматы, Нурсултане и областях • 1 wifi на 5-6 чел • Высокий сезон
      </div>
    </div>
    <div class="selectServiceSeason">
      <div class="winter">
        <img src="./public/img/icons/calculator/snow.svg">
        <span>1 000 KZT</span>
      </div>
      <div class="summer">
        <img src="./public/img/icons/calculator/sun.svg">
        <span>1 500 KZT</span>
      </div>
    </div>
    <div class="selectServiceCard">
      <img src="./public/img/icons/calculator/card.svg">
      <span>за штуку</span>
    </div>
    <div class="selectServiceNum">
      1
    </div>
    <div class="selectServiceTotal">
      <span style="opacity: 0.6; margin-bottom: 20px;">1 000 KZT</span>
      <span>1 500 KZT</span>
    </div>
  </div>
</div>

<div>
  <img src="<?=$host?>/public/img/icons/calculator/bigPlus.svg" class="hoverBtn">
</div>