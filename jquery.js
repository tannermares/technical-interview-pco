// Deprecated since jQuery 1.7
element_name = container + " .plan"

$(element_name).die().live('click', function(el) { 
  $(el).hide() 
});