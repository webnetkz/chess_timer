// Добавляет на панель новую локацию
/*================================================*/
function popup(elem, text) {
  let modal = document.createElement("div");
  modal.classList.add('popup');
  modal.innerHTML = text;
  elem.appendChild(modal);
  elem.style.position = "relative";
  elem.setAttribute("onclick", 'document.querySelector(".popup").remove();this.setAttribute("onclick", "popup(this, \''+text+'\')")');
}
/*================================================*/