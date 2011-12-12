  def test_update_invalid
    <%= instance_name %> = Factory(:<%= instance_name %>)
    <%= class_name %>.any_instance.stubs(:valid?).returns(false)
    put :update, :id => <%= instance_name %>.id
    assert_template 'edit'
  end

  def test_update_valid
    <%= instance_name %> = Factory(:<%= instance_name %>)
    <%= class_name %>.any_instance.stubs(:valid?).returns(true)
    put :update, :id => <%= instance_name %>.id
    assert_redirected_to <%= item_path_for_test('url') %>
  end
