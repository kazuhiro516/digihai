RSpec.describe "PrivateBusinessUsers", type: :request do
  let(:private_business_user) { create(:private_business_user) }
  let(:user) { create(:user) }

  describe "GET #index" do
    it "配達員一覧が表示されていること" do
      get root_path
      expect(response).to have_http_status "200"
    end
  end

  describe "GET #show" do
    it "レビュー投稿画面が表示されていること" do
      sign_in user
      get private_business_user_path(private_business_user)
      expect(response).to have_http_status "200"
    end
  end
end
