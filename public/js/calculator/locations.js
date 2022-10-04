// Добавляет на панель новую локацию
/*================================================*/
function showAllLocations(day) {
  // Ограничение на 3-ри локации
  if(document.querySelectorAll(".setLocations"+day+" > *").length <= 4) {

    let nowCities = document.querySelectorAll(".setLocations"+day+" > span");
    for(let city of nowCities) {
      if(city.innerText && city.innerText == document.querySelector(".getLocations"+day).value) {
        showError("Данная локация выбрана на этот день");
        return;
      }  
    }
    document.querySelector(".setLocations"+day).innerHTML += `<span class="locate">${document.querySelector(".getLocations"+day).value} <img class="closeLocate hoverBtn"  src="./public/img/icons/close.svg" onclick="this.parentNode.remove(); document.querySelector('.getLocations${day}').style.display = 'block';"></span>`;
    if(document.querySelectorAll(".setLocations"+day+" > *").length >= 5) {
      document.querySelector(".getLocations"+day).style.display = "none";
    }
      
  } else {
    return false;
  }
}
/*================================================*/

