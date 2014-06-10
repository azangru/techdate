# Pages function for sign up

$ ->
  collapseElement = (obj, completed_func) ->
    $el = $("##{obj}")
    $el.hide ->
      completed_func()

  expandElement = (obj) ->
    $el = $("##{obj}")
    $el.show()

  # Two page sign up on landing page
  $("#page_1_button").on "click", (e) ->
    e.preventDefault()
    collapseElement "page_1", -> 
      expandElement("page_2")

  # Search fields on application page
  $("#search_form_link").on "click", (e) ->
    expandElement("short_search")

  $("#long_search_button").on "click", (e) ->
    e.preventDefault()
    $("#search_type").val("complex")
    expandElement("long_search")


  

