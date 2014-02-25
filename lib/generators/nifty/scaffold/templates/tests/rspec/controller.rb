require  'spec_helper'

describe <%= plural_class_name %>Controller do
  render_views
  let!(:<%= instance_name %>) { FactoryGirl.create(:<%= instance_name %>) }

  <%= controller_methods 'tests/rspec/actions' %>
end
