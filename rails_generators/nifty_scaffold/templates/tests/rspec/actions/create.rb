  it "create action should render new template when model is invalid" do
    <%= singular_name %> = Factory.build(:<%= singular_name %>)
    <%= class_name %>.any_instance.stubs(:valid?).returns(false)
    post :create, :<%= singular_name %> => { <%= singular_name %>.attributes }
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    <%= singular_name %> = Factory.build(:<%= singular_name %>)
    <%= class_name %>.any_instance.stubs(:valid?).returns(true)
    post :create, :<%= singular_name %> => { <%= singular_name %>.attributes }
    response.should redirect_to(<%= item_path_for_spec('url') %>)
  end
