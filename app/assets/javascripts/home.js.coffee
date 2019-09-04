# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#motivators").sortable()
  $("#motivators").disableSelection()
  $( "#motivators" ).on "sortover", (event, ui) ->
    $(ui.item).tooltip("toggle")

  $("#motivators li").on "mouseleave", ->
    $("#description").html("카드 위에 마우스를 올리면 설명이 나옵니다.")

  $("#motivators li").on "mouseenter", ->
    $("#description").html(Window.motivatorsDescription[$(this).data("index")])

  $(".description").each (index, item) ->
    $item = $(item)
    $item.text(Window.motivatorsDescription[$item.data("index")])

  $('#saveOrder').click ->
    console.log("TEST")
    order = []
    $("#motivators li").each (index, item) ->
      order.push($(item).data("index"))
    $.post '/answers',
      ordering: order.join(","),
      success: ->
#        $("#data-input").remove()
#        $("#success_message").show()
#        $('#myModal').modal('hide')
