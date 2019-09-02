Window.motivatorsDescription = [
  "인정 : 주변 사람들이 내가 하는 일과 나를 우호적으로 받아들입니다.",
  "호기심 : 나는 살펴보고 싶거나 생각해보고 싶은 것이 많습니다",
  "자유 : 나는 업무와 책임에 대해 다른 사람들로부터 독립적입니다",
  "지위 : 내 위치가 만족스럽고, 함께 일하는 사람들이 그 위치를 인정합니다",
  "목표 : 내 인생의 목적이 내가 하는 일에 반영됩니다",
  "전문성 : 내 업무가 도전적이기는 하지만 여전히 내 능력 범위 안에 있습니다",
  "명예 : 내가 추구하는 가치가 내가 일하는 방식에 반영되고 있다는 것이 자랑스럽습니다",
  "질서 : 충분한 규칙과 정책이 있어서 주변 환경이 안정적입니다",
  "힘 : 나는 주변에서 일어나는 일에 필요한 만큼 영향을 미칠 수 있습니다",
  "관계 : 나는 함께 일하는 사람들과 좋은 관계를 맺고 있습니다"]


$('#saveOrder').click ->
  order = []
  $("#motivators li").each (index, item) ->
    order.push($(item).data("index"))
  $.post '/answers',
    user: $("#user").val()
    ordering: order.join(","),
    success: ->
      $("#data-input").remove()
      $("#success_message").show()
      $('#myModal').modal('hide')