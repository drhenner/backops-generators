class Create<%= class_name.pluralize.delete('::') %> < ActiveRecord::Migration
  def self.up
    create_table :<%= table_name || plural_name.split('/').last %> do |t|
    <%- for attribute in model_attributes -%>
      t.<%= attribute.type %> :<%= attribute.name %>
    <%- end -%>
    <%- unless options[:skip_timestamps] -%>
      t.timestamps
    <%- end -%>
    end
    <%- for attribute in model_attributes -%>
      <%- if attribute.name[-3..-1] && attribute.name[-3..-1] == '_id' -%>
      add_index :<%= table_name || plural_name.split('/').last %> :<%= attribute.name %>
      <%- end -%>
    <%- end -%>
  end

  def self.down
    drop_table :<%= table_name || plural_name.split('/').last %>
  end
end
