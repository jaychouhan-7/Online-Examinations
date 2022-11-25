const alert_message = document.querySelector(".close");

alert_message.addEventListener("click", function(){
  document.querySelector(".alert").classList.add("fade","show")
})
