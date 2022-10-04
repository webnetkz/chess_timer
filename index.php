<?php
require_once "./public/components/header.php";
?>


<style>
  #mainContent {
    background: var(--orange);
  }
  .trackingContainer {
    min-height: 70vh;
    background: url("./public/img/indexBg.png");
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center 50%;
    animation: showBgIndex 8s infinite;
  }
  @keyframes showBgIndex {
    50% {
      background-position: center 70%;
    }
  }
  .tracking h1 {
    color: var(--white);
    margin-top: 10vh;
  }
  .trackNumber {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 60px;
  }
  .inpHalf, .btnHalf {
    border: none;
    font-size: 1.3rem;
    padding: 5px 15px;
    outline: none;
  }
  .btnHalf {
    background: var(--blue);
    color: var(--white);
  }
</style>

<!--============================================================
 ==================== Старт основного контента =================
 ============================================================-->
<div id="mainContent">
  <div id="mainContentContainer">
    
    <div class="trackingContainer">
      <div class="tracking">

        <h1>Find out where your package is right now</h1>
        <div class="trackNumber">
          <input type="text" class="inpHalf" placeholder="Trace track">
          <button class="btnHalf">Trace</button>
        </div>

      </div>
    </div>


  </div>
</div>



<?php
require_once "./public/components/footer.php";
?>

      
      
