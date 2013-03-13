// Updated Method since JQuery 1.7
element_name = container + " .plan";

$(element_name).off().on('click', function(event) { 
  $(this).hide();
});