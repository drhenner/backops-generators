  it "edit action should render edit template" do
    <%= instance_name %> = Factory(:<%= instance_name %>)
    get :edit, :id => <%= instance_name %>.id
    response.should render_template(:edit)
  end
