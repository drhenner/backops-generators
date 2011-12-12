  def test_show
    <%= instance_name %> = Factory(:<%= instance_name %>)
    get :show, :id => <%= instance_name %>.id
    assert_template 'show'
  end
