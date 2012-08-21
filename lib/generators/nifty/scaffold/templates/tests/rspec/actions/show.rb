  it "show action should render show template" do
    <%= instance_name %> = FactoryGirl.create(:<%= instance_name %>)
    get :show, :id => <%= instance_name %>.id
    response.should render_template(:show)
  end
