  def test_index
    <%= instance_name %> = Factory(:<%= instance_name %>)
    get :index
    assert_template 'index'
  end
