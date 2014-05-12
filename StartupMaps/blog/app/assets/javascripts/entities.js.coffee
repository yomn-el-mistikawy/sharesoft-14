# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
function check(form)
  {
        if (form.elements.status.value == 'other' && form.elements.other.value.length == 0)
        {
            alert("you need to fill the text box");
            return false;
        }
  }