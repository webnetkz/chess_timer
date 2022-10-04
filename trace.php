<?php
require_once "./public/components/header.php";
?>


<style>
  #mainContent {
    background: var(--orange);
  }
  .trackingContainer {
    min-height: 80vh;
  }
  .tracking h1 {
    color: var(--white);
    margin-top: 10vh;
  }
  .informationOfTrack {
    min-height: 100px;
    background: var(--white);
    margin: 1px;
    border-radius: 8px;
  }
</style>

<!--============================================================
 ==================== Старт основного контента =================
 ============================================================-->
<div id="mainContent">
  <div id="mainContentContainer">
    
    <div class="trackingContainer">
      <div class="tracking">

        <h1>Parcel location</h1>
        <br>
        <iframe 
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d220348.07437987553!2d80.60593961219018!3d43.478240174182524!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x387eaf1be2ebfe95%3A0x58113f851ba630c8!2sKolzhat!5e0!3m2!1sru!2skz!4v1664876749541!5m2!1sru!2skz"
          width="100%"
          height="450"
          style="border:0; border-radius: 8px;"
          allowfullscreen=""
          loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

        <div class="informationOfTrack">

        </div>

      </div>
    </div>


  </div>
</div>



<?php
require_once "./public/components/footer.php";
?>

      
      
