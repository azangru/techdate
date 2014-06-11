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

  # Tracking new messages and views
  getUnseenMessageCount = ->
    $.getJSON("/messages/unseen").done (data) ->
      unseen_count = _(data).where({seen: false}).length
      $("#navbar-messages-link").text "Messages(#{unseen_count})"

  getUnseenViewCount = ->
    $.getJSON("/profile/views/unseen").done (data) ->
      unseen_count = _(data).where({seen: false}).length
      $("#navbar-views-link").text "Views(#{unseen_count})"

  # getUnseenViewCount = ->
  #   count = 0
  #   $.getJSON("/profile/views").done (data) ->
  #     count = _(data).where({seen: false}).length
  #   count


  printUpdater = ->
    setInterval(printUnseenMessages, 3000)
    setInterval(printUnseenViews, 3000)

  # printUpdater()

  setInterval ->
    getUnseenMessageCount()
    getUnseenViewCount()
  , 3000
  getUnseenMessageCount()
  getUnseenViewCount()