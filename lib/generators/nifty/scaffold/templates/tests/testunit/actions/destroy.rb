  def test_destroy
    <%= instance_name %> = Factory(:<%= instance_name %>)
    delete :destroy, :id => <%= instance_name %>
    assert_redirected_to <%= items_url %>
    assert !<%= class_name %>.exists?(<%= instance_name %>.id)
    assert !<%= class_name %>.find(<%= instance_name %>.id).active
  end
