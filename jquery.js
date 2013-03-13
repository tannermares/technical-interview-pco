// Updated Method since JQuery 1.7
element_name = container + " .plan";
// Replaced die() and live() methods with new off() and on().
// added event.preventDefault() to stop default action from clicking element
$(element_name).off().on('click', function(event) { 
  event.preventDefault();
  $(this).hide();
});