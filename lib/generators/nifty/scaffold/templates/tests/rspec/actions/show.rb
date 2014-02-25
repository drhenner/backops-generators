  describe "GET #show" do
    it 'show action should render show template' do
      get :show, id: <%= instance_name %>.id
      expect(response).to render_template(:show)
    end
  end
