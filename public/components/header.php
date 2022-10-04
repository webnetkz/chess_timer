<?php

// Enable errors
error_reporting(E_ALL);
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);

require_once "./config.php";
require_once "./app/libs/lang.php";

$host = @$_SESSION['host'];


?>
<!DOCTYPE html>
<html lang="en">
    <head>

        <title>App name</title>

        <meta charset="UTF-8">
        <meta name="theme-color" content="#FFF">
        <meta name="author" content="webnet.kz">
        <meta name="description" content="mini project create own buttons html5 of webnet.kz">
        <meta name="keywords" content="Create html buttons, webnet, webnet.kz, PWA">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="index, follow">

        <link rel="shortcut icon" href="<?=$host?>/public/img/logo.png" type="image/png">
        <link rel="apple-touch-icon" href="<?=$host?>/public/img/logo.png">
        <link rel="stylesheet" type="text/css" href="<?=$host?>/public/css/style.css">
        <link rel="stylesheet" href="<?=$host?>/public/css/mobileStyle.css">
        <link rel="manifest" href="<?=$host?>/public/json/manifest.json"> 

      </head>

    <body>
      <style>
        .loaderContainer {
          position: fixed;
          top: 0;
          left: 0;
          width: 100vw;
          height: 100vh;
          background: rgba(255, 255, 255, 0.9);
          z-index: 999999;
          display: flex;
          justify-content: center;
          align-items: center;
        }
        .loaderBlock {
          width: 100px;
          height: 100px;
          background: white;
          border-radius: 100px;
          border: 1px solid var(--orange);
          display: flex;
          justify-content: center;
          align-items: center;
          transition-duration: 300ms;
          box-shadow: 0 0 10px var(--orange);
        }
        .loader {
          width: 50px;
          height: 50px;
          background: white;
          border-radius: 50px;
          border: 2px solid var(--orange);
          border-bottom: 0px;
          transition-duration: 300ms;
          animation: loader 1s infinite;
        }
        @keyframes loader {
          50% {
            transform: rotate(360deg);
          }
        }

      </style>

    <div class="loaderContainer">
      <div class="loaderBlock">
        <div class="loader"></div>
      </div>
    </div>

    <header>
      <div class="headerContent">
        <div class="logo" onclick="location.href = './index.php'">
          <img src="<?=$host?>/public/img/logo.png" id="logoImg">
          <span><?=NAMEAPP?></span>
        </div>
        <div class="headerNavigation">
          <div class="lang">
            <div class="langImgContainer" onclick="showModalMenu('lang')">
              <span class="nowLang"><?=$_SESSION['lang']?></span>
            </div>
            <div class="blockator" id="lang" onclick="this.style.display = 'none'">
              <div id="getLang">
                <div id="getLangContent">
                  <div class="hoverBtn" onclick="changeLang('en');"><span>En</span></div>
                  <div class="hoverBtn" onclick="changeLang('kz');"><span>Kz</span></div>
                  <div class="hoverBtn" onclick="changeLang('ru');"><span>Ru</span></div>
                </div>
              </div>
            </div>
          </div>
          <div class="user">
            <div class="userImgContainer" onclick="showModalMenu('user')">
              <img src="<?=$host?>/public/img/icons/user.svg" class="hoverBtn">
              <?php
                if(isset($_SESSION['login'])) {
                  echo '<style>
                    .userImgContainer {
                      display: flex; flex-direction: column;
                      margin-top: 20px;
                    }
                  </style>';
                  echo '<span class="showMyLogin">'.$_SESSION['login'].'</span>';
                }
              ?>
            </div>
            <div class="blockator" id="user">
              <div id="getUser">
                <div id="getUserContent">
                  <div class="headerModal">
                    <span class="headerModalActive"  onclick="showSignUp();"><?=SIGNUP?></span>
                    <span class="headerModalDontActive" onclick="showSignIn();"><?=SIGNIN?></span>
                  </div>
                  <h2><?=SIGNUP?></h2>

                  <form action="<?=$host?>/app/core/sign/signup.php?url=<?=$host?>" class="sign signupForm" method="POST">
                    <label for="login"><?=EM?></label>
                    <input type="text" class="yelInp signupLogin" name="login">
                  
                    <label for="pass"><?=PASS?></label>
                    <input type="password" id="pass" class="yelInp signupPass" name="pass">

                    <label for="pass2"><?=PASS2?></label>
                    <input type="password" id="pass2" class="yelInp signupPass2" name="pass2">

                    <div class="radioBtn">
                      <span class="hoverBtn yessign" onclick="this.style.background = 'var(--blue)'; this.style.padding = '2px'; this.classList.add('yesCheck');"></span>
                      <p><?=YESSIGN?></p>
                    </div>
                    <div style="display: flex; justify-content: center;">
                      <span onclick="checkSignup();" class="formBtn"><?=SIGNUP?></span>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="menuBurger nst">
            <div class="menuBurgerImgContainer" onclick="showModalMenu('menuBurger')">
              <img src="<?=$host?>/public/img/icons/burgerMenu.svg">
            </div>
            <div class="blockator" id="menuBurger" onclick="this.style.display = 'none'">
              <div id="getMenuBurger">
                <div id="getMenuBurgerContent">

                  <div class="hoverBtn" onclick="location.href = '<?=$host?>'">
                    <span><?=IND?></span>
                  </div>
                  

                  <br><br>

                  <div class="hoverBtn" onclick="location.href = '<?=$host?>'">
                    <span><?=GID?></span>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <script>
      function showModalMenu(idElem) {
        document.querySelector("#"+idElem).style.display = "block";
      }
      function changeLang(lang) {
        document.querySelector("#lang").style.display = "none";
        document.querySelector("#user").style.display = "none";
        document.querySelector("#menuBurger").style.display = "none";
        location.href = '<?=$host?>/app/libs/changeLang.php?lang='+lang+'&url='+window.location.href;
      }
      function showSignUp() {
        let newContent = `<div id="getUserContent">
              <div class="headerModal">
                <span class="headerModalActive"  onclick="showSignUp();"><?=SIGNUP?></span>
                <span class="headerModalDontActive" onclick="showSignIn();"><?=SIGNIN?></span>
              </div>
              <h2><?=SIGNUP?></h2>

              <form action="<?=$host?>/app/core/sign/signup.php?url=<?=$host?>" class="sign signupForm" method="POST">
                <label for="login"><?=EM?></label>
                <input type="text" class="yelInp signupLogin" name="login">
                  
                <label for="pass"><?=PASS?></label>
                <input type="password" id="pass" class="yelInp signupPass" name="pass">

                <label for="pass2"><?=PASS2?></label>
                <input type="password" id="pass2" class="yelInp signupPass2" name="pass2">

                <div class="radioBtn">
                  <span class="hoverBtn yessign" onclick="this.style.background = '#FFD400'; this.style.padding = '2px'; this.classList.add('yesCheck');"></span>
                  <p><?=YESSIGN?></p>
                </div>
                <div style="display: flex; justify-content: center;">
                  <span onclick="checkSignup();" class="formBtn"><?=SIGNUP?></span>
                </div>
              </form>
            </div>`;
        document.querySelector("#getUser").innerHTML = newContent;
      }
      function showSignIn() {
        let newContent = `
            <style>
              #getUser {
                height: 510px!important;
              }
            </style>
            <div id="getUserContent">
              <div class="headerModal">
                <span class="headerModalDontActive"  onclick="showSignUp();"><?=SIGNUP?></span>
                <span class="headerModalActive" onclick="showSignIn();"><?=SIGNIN?></span>
              </div>
              <h2><?=SIGNIN?></h2>


              <form action="${H}/app/core/sign/signin.php?url=${location.href}" class="sign signinForm" method="POST">
                    <label for="login"><?=EM?></label>
                <input type="text" class="yelInp signinLogin" name="login">
                  
                <label for="pass"><?=PASS?></label>
                <input type="password" id="pass" class="yelInp signinPass" name="pass">

                <div>
                  <a href="#"><?=FORGETPASS?></a>
                </div>
                <div style="display: flex; justify-content: center;">
                  <span onclick="checkSignin()" class="formBtn"><?=SIGNIN?></span>
                </div>
              </form>
            </div>`;
        document.querySelector("#getUser").innerHTML = newContent;
      }
    </script>

    <style>
      .b {
        position: fixed;
        top: -100vh;
        left: 0px;
        display: block;
        width: 100vw;
        height: 100vh;
        overflow: hidden;
        z-index: 2;
        background: rgba(11, 46, 78, 0.4);
        display: flex;
        justify-content: center;
        transition-duration: 0.1s;
      }

    </style>
    <div class="b" onclick="closeBlocator()"></div>
    <script>

      function closeBlocator() {
        document.querySelector(".b").style.top = "-100vh";
      }
      const H = localStorage.getItem("host");
    </script>