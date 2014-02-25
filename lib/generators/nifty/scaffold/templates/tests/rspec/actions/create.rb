  describe "POST #create" do
    it "create action should render new template when model is invalid" do
      <%= class_name %>.any_instance.stub(:valid?) { false }
      post :create, <%= instance_name %>: <%= instance_name %>.attributes.reject {|k,v| ['id'].include?(k)}
      expect(response).to render_template(:new)
    end

    it "create action should redirect when model is valid" do
      <%= class_name %>.any_instance.stub(:valid?) { true }
      post :create, <%= instance_name %>: <%= instance_name %>.attributes.reject {|k,v| ['id'].include?(k)}
      expect(response).to redirect_to(<%= item_path_for_spec('url') %>)
    end
  end
