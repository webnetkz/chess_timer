function checkSignin() {
  if(document.querySelector('.signinLogin').value == '') {
    showError("Введите логин");    
  } else {
    if(document.querySelector('.signinPass').value == '') {
      showError("Введите пароль");    
    } else {
      document.querySelector(".signinForm").submit();
    }
  }
}

function checkSignup() {
  if(document.querySelector('.signupLogin').value == '') {
    showError("Введите логин");    
  } else {
    if(document.querySelector('.signupPass').value == '') {
      showError("Введите пароль");    
    } else {
      if(document.querySelector('.signupPass2').value == '') {
        showError("Введите пароль еще раз");
      } else {
        if(document.querySelector('.signupPass').value == document.querySelector('.signupPass2').value) {
          if(!document.querySelector('.yessign').classList.contains("yesCheck")) {
            showError("Примите политику конфиденцильности");
          } else {
            document.querySelector(".signupForm").submit();
          }
        } else {
          showError("Пароли не повторяются");
        }
      }
    }
  }
}