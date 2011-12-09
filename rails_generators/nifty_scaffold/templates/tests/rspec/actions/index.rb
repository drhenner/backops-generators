  it "index action should render index template" do
    <%= singular_name %> = Factory(:<%= singular_name %>)
    get :index
    response.should render_template(:index)
  end
