    <style>
      footer {
        width: 100vw;
        background: #0066ff;
      }
      .footerContent {
        width: 1200px;
        margin: 0px auto;
        display: flex;
        justify-content: space-between;
        align-items: center;
        height: 168px;
      }
      footer a {
        color: white;
        text-decoration: none;
        font-weight: 100;
      }
      .footerContent > div a {
        margin: 0px 20px;
      }
      .linkContacts {
        margin-left: 300px!important;
      }
      .btnToTop {
        transition-duration: 300ms;
      }
      .btnToTop:hover {
        cursor: pointer;
        transform: scale(1.1);
      }
    </style>
    <footer>
      <div class="footerContent">
        <div>
          <a href="#"><?=POLIT?></a>
          <a href="#"><?=DOGOFF?></a>
          <a href="<?=$host?>/contacts.php" class="linkContacts"><?=CONT?></a>
        </div>
        <img src="<?=$host?>/public/img/icons/arrowToTop.svg" class="btnToTop" onclick="location.href = '<?=$host?>/#logoImg'">
      </div>
    </footer>
    
    <script src="./public/js/main.js" type="module"></script>
      <script>
        // Проверка браузера на поддержку service worker
       if('serviceWorker' in navigator) {
           // Подключаем sw
           //navigator.serviceWorker.register('./sw.js').then(function() {
               console.log("Service Worker Registered");
           //});
       }
    </script>
    <script src="settings.js"></script>
    <script src="<?=$host?>/public/js/moduls/error.js"></script>
    <script src="<?=$host?>/public/js/main.js"></script>
    <script>
      initError();
    </script>
    <?php

      if(isset($_GET['msg']) && !empty($_GET['msg'])) {
        echo "<script>showError('".$_GET['msg']."');</script>";
        unset($_GET['msg']);
      }
    ?>

    <script src="<?=$host?>/public/js/moduls/sign.js"></script>
    <script>
      // Удаляет сообщение, зачищая строку браузера от сообщения
      /*================================================*/
        const url = new URL(document.location);
        const searchParams = url.searchParams;
        searchParams.delete("msg");
        window.history.pushState({}, '', url.toString());
      /*================================================*/
    </script>
  </body>
</html>
<?php

if(isset($_SESSION['login'])) {
  echo '<script>
  
  let newContent = `
  <style>

  #getUser {
    position: fixed;
    top: 70px;
    left: calc(50vw + 500px);
    color: red;
    background: #FFFFFF;
    border: 2px solid #FFE565;
    box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.13);
    border-radius: 30px;
    width: 250px;
    height: 150px;
    animation: showModalMenu 0.2s linear;
    transition-duration: 300ms;
  }
  #getUserContent div span {
    font-family: \'Ubuntu\';
    font-style: normal;
    font-weight: 400;
    font-size: 20px;
    line-height: 23px;
    color: #0B2E4E;
  }
  #getUserContent {
    padding: 20px 42px;
  }
  </style>
  <div id="getUserContent">
    <div class="hoverBtn" onclick="location.href = \''.$host.'\'">
      <span>'.$_SESSION['login'].'</span>
    </div>
    <div class="hoverBtn" onclick="location.href = \''.$host.'\'">
      <span>Личный кабинет</span>
    </div>
    <br>
    <br>
    <div class="hoverBtn" onclick="location.href = \''.$host.'\/app/core/sign/logout.php?url=location.href\'">
      <span>'.EXITX.'</span>
    </div>
  </div>`;
document.querySelector("#getUser").innerHTML = newContent;

  </script>';
}