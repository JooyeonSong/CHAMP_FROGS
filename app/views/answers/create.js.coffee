<% if !@answer.nil? && @answer.errors.empty? %>
$('#myModal').modal('hide')
window.location.replace("<%= answers_path%>")
<% else %>
alert("제출하지 못했습니다. 다시 시도해주세요.")
<% end %>
