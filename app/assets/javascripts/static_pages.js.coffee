# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

updateCountdown = ->
  # 140 is the max message length
  remaining = 140 - jQuery("#micropost_content").val().length
  jQuery("#countdown").text remaining + " characters remaining."
  return

jQuery(document).ready ($) ->
  updateCountdown()
  $("#micropost_content").change updateCountdown
  $("#micropost_content").keyup updateCountdown
  return
