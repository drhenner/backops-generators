  describe "GET #edit" do
    it "edit action should render edit template" do
      get :edit, id: <%= instance_name %>.id
      expect(response).to render_template(:edit)
    end
  end
