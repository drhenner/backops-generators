  it "edit action should render edit template" do
    <%= instance_name %> = FactoryGirl.create(:<%= instance_name %>)
    get :edit, :id => <%= instance_name %>.id
    response.should render_template(:edit)
  end
