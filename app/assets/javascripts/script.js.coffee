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
    $("#short_search_buttons").hide()

  $("#back_to_short_search").on "click", (e) ->
    $("#search_type").val("simple")
    $("#long_search").hide()

  # Tracking new messages and views
  getUnseenMessageCount = ->
    $.getJSON("/messages/unseen").done (data) ->
      unseen_count = _(data).where({seen: false}).length
      if unseen_count > 0
        $("#navbar-messages-link span").addClass("new-counts").html("<sup>(#{unseen_count})</sup>")

  getUnseenViewCount = ->
    $.getJSON("/profile/views/unseen").done (data) ->
      unseen_count = data #here I (Andrey) am actually using a different (better) approach than in the privious method (get JSON to return me the count of views instead of individual views), because I am an idiot
      if unseen_count > 0
        $("#navbar-views-link span").addClass("new-counts").html("<sup>(#{unseen_count})</sup>")

  # getUnseenViewCount = ->
  #   count = 0
  #   $.getJSON("/profile/views").done (data) ->
  #     count = _(data).where({seen: false}).length
  #   count


  # printUpdater = ->
  #   setInterval(printUnseenMessages, 3000)
  #   setInterval(printUnseenViews, 3000)

  # # printUpdater()

  setInterval ->
    getUnseenMessageCount()
    getUnseenViewCount()
  , 3000
  getUnseenMessageCount()
  getUnseenViewCount()