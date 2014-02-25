# Schema
<%- model_attributes.each do |a| -%>
<%= "# #{a.name}" %>
<%- end -%>
class <%= class_name %> < ActiveRecord::Base
<%= "  set_table_name :#{table_name}\n" if table_name -%>
end
