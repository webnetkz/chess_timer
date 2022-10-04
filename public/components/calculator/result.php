<style>
  .resultH {
    font-family: sans-serif;
    font-style: normal;
    font-weight: 600;
    font-size: 18px;
    line-height: 25px;
    color: #0B2E4E;
    margin-top: 40px;
  }
  .resultContainer {
    margin-top: 25px;
  }
  .resultHeader, .resultLine, .resultLineLast {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0px 27px;
  }
  .resultHeader {
    height: 95px;
    background: #FFF0A6;
    border-radius: 30px 30px 0px 0px;
  }
  .resultLine {
    height: 44px;
    background: #F2F2F2;
    border-top: 1px solid white;
  }
  .resultLineLast {
    height: 44px;
    background: #F2F2F2;
    border-top: 1px solid white;
    border-radius: 0px 0px 30px 30px;
    margin-bottom: 35px;
  }
  .resultHeaderDocs {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 15px;
  }
  .resultDocsBtn {
    width: 241.98px;
    height: 58.08px;
    filter: drop-shadow(0px 5px 10px rgba(11, 46, 78, 0.13));
    background: #FFFFFF;
    border: 2.13917px solid #FFE565;
    border-radius: 32.0876px;
    text-align: center;
    font-style: normal;
    font-weight: 400;
    font-size: 16.4547px;
    line-height: 19px;
    text-align: center;
    color: #0B2E4E;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .resultDocsText {
    height: 237px;
    filter: drop-shadow(0px 5px 10px rgba(11, 46, 78, 0.13));
    background: #FFFFFF;
    border: 2.13917px solid #FFE565;
    border-radius: 32.0876px;
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 150%;
    color: #0B2E4E;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    padding-left: 25px;
  }
  .resultDocsText {
    display: flex;
    justify-content: space-around;
    margin-bottom: 50px;
  }
  .resultDocsText > div > div {
    width: 400px;
    margin-bottom: 17px;
  }
  .resultSeason {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-top: 30px;
  }
  .resultSeasonTitle {
    font-style: normal;
    font-weight: 600;
    font-size: 14px;
    line-height: 19px;
    display: flex;
    align-items: center;
    color: #0B2E4E;
    margin-left: 20px;
  }
  .resultRadioBtnsCurrency {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 20px;
  }
  .resultRadioBtnsCurrency span {
    font-style: normal;
    font-weight: 400;
    font-size: 12px;
    line-height: 97.18%;
    display: flex;
    align-items: center;
    color: #0B2E4E;
    opacity: 0.6;
    padding-left: 35px;
  }
  .resultRadioBtnsCheck div label {
    margin-left: 20px;
  }
  .resultRadioBtnsCheck div {
    display: flex;
    align-items: center;
    margin-right: 35px;
  }
  .resultRadioBtnsCheck {
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .resultRadioBtnsCheck div span {
    font-family: 'Ubuntu';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 16px;
    display: flex;
    align-items: center;
    color: #0B2E4E;
  }
  .resultLineTitle, .resultLineTotal span {
    font-style: normal;
    font-weight: 400;
    font-size: 12px;
    line-height: 97.18%;
    display: flex;
    align-items: center;
    color: #0B2E4E;
  }
  .resultLineTotal {
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .resultLineTotal span {
    display: block;
    min-width: 140px;
    text-align: right;
    margin: 0;
  }
  .resultProfit {
    position: relative;
    left: 300px;
    max-width: 50px!important;
    padding: 5px 10px;
  }
  .resultTextH {
    font-style: normal;
    font-weight: 600;
    font-size: 14px;
    line-height: 97.18%;
    display: flex;
    align-items: center;
    color: #0B2E4E;
  }
</style>
<h4 class="resultH">Итоговый расчёт</h4>
<div class="resultContainer">
  <div class="resultHeader">
    <div class="resultSeason">
      <img src="./public/img/icons/calculator/sun.svg">
      <span class="resultSeasonTitle">Высокий сезон (март-октябрь)</span>
    </div>
    <div class="resultRadioBtns">
      <div class="resultRadioBtnsCurrency">
        <span></span>
        <span>1 USD/ 420 KZT</span>
        <span>1 EUR/ 520 KZT</span>
        <span>1 RUB/ 5,5 KZT</span>
      </div>
      <div class="resultRadioBtnsCheck">
        <div>
          <span>KZT</span>
          <label class="switch">
            <input type="checkbox">
            <span class="slider round"></span>
          </label>
        </div>
        <div>
          <span>USD</span>
          <label class="switch">
            <input type="checkbox">
            <span class="slider round"></span>
          </label>
        </div>
        <div>
          <span>EUR</span>
          <label class="switch">
            <input type="checkbox">
            <span class="slider round"></span>
          </label>
        </div>
        <div style="margin-right: 0px;">
          <span>RUB</span>
          <label class="switch">
            <input type="checkbox">
            <span class="slider round"></span>
          </label>
        </div>
      </div>
    </div>
  </div>

  <div class="resultLine">
    <div class="resultLineTitle">
      Итого себестоимость на группу
    </div>
    <div class="resultLineTotal">
      <span>1 000 000</span>
      <span>2 381</span>
      <span>1 000 000</span>
      <span>1 000 000</span>
    </div>
  </div>
  <div class="resultLine">
    <div class="resultLineTitle">
      Итого себестоимость на 1 чел   <span style="opacity: 0.6"> (без турлидера и младенца. Итого 5 чел)</span>
    </div>
    <div class="resultLineTotal">
      <span>200 000</span>
      <span>476,19</span>
      <span>200 000</span>
      <span>200 000</span>
    </div>
  </div>
  <div class="resultLine">
    <div class="resultLineTitle">
      Маржа <input type="text" class="smallInp resultProfit" value="20%">
    </div>
    <div class="resultLineTotal">
      <span>200 000</span>
      <span>476,19</span>
      <span>200 000</span>
      <span>200 000</span>
    </div>
  </div>
  <div class="resultLine">
    <div class="resultLineTitle">
                  Комиссия агент №1
    </div>
    <div class="resultLineTotal">
      <span>0</span>
      <span>0</span>
      <span>0</span>
      <span>0</span>
    </div>
  </div>
  <div class="resultLine">
    <div class="resultLineTitle">
                  Комиссия агент №2
    </div>
    <div class="resultLineTotal">
      <span>0</span>
      <span>0</span>
      <span>0</span>
      <span>0</span>
    </div>
  </div>
  <div class="resultLine">
    <div class="resultLineTitle">
      <h3 class="resultTextH">
        Итого стоимость за группу для КП
      </h3>
    </div>
    <div class="resultLineTotal">
      <span>1 000 000</span>
      <span>2 381</span>
      <span>1 200 000</span>
      <span>1 200 000</span>
    </div>
  </div>
  <div class="resultLine">
    <div class="resultLineTitle">
    Стоимость на человека при двухмест.размещении
    </div>
    <div class="resultLineTotal">
      <span>200 000</span>
      <span>476,19</span>
      <span>200 000</span>
      <span>200 000</span>
    </div>
  </div>
  <div class="resultLineLast">
    <div class="resultLineTitle">
      Доплата за одноместн.размещение
    </div>
    <div class="resultLineTotal">
      <span>50 000</span>
      <span>119</span>
      <span>50 000</span>
      <span>50 000</span>
    </div>
  </div>
</div>

<div class="resultDocsContainer">
  <div class="resultHeaderDocs">
    <div class="resultDocsBtn">Сформировать<br> программу и КП</div>
    <div class="resultDocsBtn">Условия бронирования<br> и аннуляции</div>
    <div class="resultDocsBtn">Формирование<br> ваучера</div>
    <div class="resultDocsBtn">Формирование<br> схемы маршрута</div>
  </div>
  <div class="resultDocsText">
    <div>
      <div>
        Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint deserunt ut voluptate aute id deserunt nisi.
      </div>
      <div>
        Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint deserunt ut voluptate aute id deserunt nisi.
      </div>
    </div>

    <div>
      <div>
        Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint deserunt ut voluptate aute id deserunt nisi.
      </div>
      <div>
        Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint deserunt ut voluptate aute id deserunt nisi.
      </div>
    </div>
  </div>
</div>
</div>