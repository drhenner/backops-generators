  it "show action should render show template" do
    <%= singular_name %> = Factory(:<%= singular_name %>)
    get :show, :id => <%= singular_name %>.id
    response.should render_template(:show)
  end
