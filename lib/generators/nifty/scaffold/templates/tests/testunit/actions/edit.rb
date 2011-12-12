  def test_edit
    <%= instance_name %> = Factory(:<%= instance_name %>)
    get :edit, :id => <%= instance_name %>.id
    assert_template 'edit'
  end
