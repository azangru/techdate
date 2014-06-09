# Pages function for sign up

$ ->
  collapseElement = (obj, completed_func) ->
    $el = $("##{obj}")
    $el.hide ->
      completed_func()

  expandElement = (obj) ->
    $el = $("##{obj}")
    $el.show()

  $("#page_1_button").on "click", (e) ->
    e.preventDefault()
    collapseElement "page_1", -> 
      expandElement("page_2") 