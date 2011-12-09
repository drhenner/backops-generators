  it "index action should render index template" do
    <%= instance_name %> = Factory(:<%= instance_name %>)
    get :index
    response.should render_template(:index)
  end
