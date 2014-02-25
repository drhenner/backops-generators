  describe "GET #index" do
    it "index action should render index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end
