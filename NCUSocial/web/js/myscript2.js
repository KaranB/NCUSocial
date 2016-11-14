function editNodeText(regex, input) {
          if (!regex.test(input)) {
              alert("Please enter a valid email");
              document.getElementById('Email').value = "";
              return false;

          } else {
              return true;
          }
}


function validatelogin() {
          if (document.loginform.Username.value === null || document.loginform.Username.value === "" || document.loginform.Password.value === null || document.loginform.Password.value === "") {
              alert("Please enter all the credentials");

              return false;
          } else
              return true;

}

function validatesignup(input) {
          return editNodeText(/^[A-Za-z0-9._-]+@ncuindia.edu$/, input.value);
}