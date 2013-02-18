  it "update action should render edit template when model is invalid" do
    <%= instance_name %> = FactoryGirl.create(:<%= instance_name %>)
    <%= class_name %>.any_instance.stubs(:valid?).returns(false)
    put :update, :id => <%= instance_name %>.id, :<%= instance_name %> => <%= instance_name %>.attributes.reject {|k,v| ['id'].include?(k)}
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    <%= instance_name %> = FactoryGirl.create(:<%= instance_name %>)
    <%= class_name %>.any_instance.stubs(:valid?).returns(true)
    put :update, :id => <%= instance_name %>.id, :<%= instance_name %> => <%= instance_name %>.attributes.reject {|k,v| ['id'].include?(k)}
    response.should redirect_to(<%= item_path_for_spec('url') %>)
  end
