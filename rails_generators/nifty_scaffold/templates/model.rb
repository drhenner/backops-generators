attributes.each do |a|
  <%= "# #{a.name}" %>
end

class <%= class_name %> < ActiveRecord::Base

end
