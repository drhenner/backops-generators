  it "create action should render new template when model is invalid" do
    <%= instance_name %> = FactoryGirl.build(:<%= instance_name %>)
    <%= class_name %>.any_instance.stubs(:valid?).returns(false)
    post :create, :<%= instance_name %> => <%= instance_name %>.attributes.reject {|k,v| ['id'].include?(k)}
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    <%= instance_name %> = FactoryGirl.build(:<%= instance_name %>)
    <%= class_name %>.any_instance.stubs(:valid?).returns(true)
    post :create, :<%= instance_name %> => <%= instance_name %>.attributes.reject {|k,v| ['id'].include?(k)}
    response.should redirect_to(<%= item_path_for_spec('url') %>)
  end
