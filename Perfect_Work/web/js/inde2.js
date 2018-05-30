
var currentT = 0; // Current tab is set to be the first tab (0)
showT(currentT); // Display the crurrent tab

function showT(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tb");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevB").style.display = "none";
  } else {
    document.getElementById("prevB").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextB").innerHTML = "Submit";
  } else {
    document.getElementById("nextB").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepI(n)
}

function nextP(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tb");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateF()) return false;
  // Hide the current tab:
  x[currentT].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentT = currentT + n;
  // if you have reached the end of the form...
  if (currentT >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regFormDH").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showT(currentT);
}

function validateF() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tb");
  y = x[currentT].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("st")[currentT].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepI(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("st");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}


