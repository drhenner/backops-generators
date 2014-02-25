  describe "DELETE #destroy" do
    it "destroy action should destroy model and redirect to index action" do
      delete :destroy, id: <%= instance_name %>.id
      expect(response).to redirect_to(<%= items_url %>)
      expect(<%= class_name %>.exists?(<%= instance_name %>.id)).to be_false
      expect(<%= class_name %>.find(<%= instance_name %>.id).active).to be_false
    end
  end
