  it "edit action should render edit template" do
    <%= singular_name %> = Factory(:<%= singular_name %>)
    get :edit, :id => <%= singular_name %>.id
    response.should render_template(:edit)
  end
