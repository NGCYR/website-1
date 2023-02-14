function showpswd() {
    var x = document.getElementById("id_user_password");
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }
  }