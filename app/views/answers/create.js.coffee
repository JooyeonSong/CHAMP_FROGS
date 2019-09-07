<% if !@answer.nil? && @answer.errors.empty? %>
$(".modal").modal('hide');
<% else %>
alert("제출하지 못했습니다. 다시 시도해주세요.")
<% end %>
