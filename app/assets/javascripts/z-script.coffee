$(document).ready ->
  $("#new_messages").on("ajax:success", (event) ->
    [data, status, xhr] = event.detail
    $("#new_messages").append xhr.responseText
   ).on "ajax:error", (event) ->
    $("#new_messages").append "<p>ERROR</p>"