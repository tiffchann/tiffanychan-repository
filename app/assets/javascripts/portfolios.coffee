# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = undefined

ready = -> 
    # .sortable is a function called from the html.sortable.js file.
    $('.sortable').sortable()
    return
    # These two ready's are different. The first ready is provided by jquery. The second ready is a variable (above code). 
$(document).ready ready