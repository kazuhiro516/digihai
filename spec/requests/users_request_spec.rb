RSpec.describe "Users", type: :request do
  let(:user) { create(:user) }

  describe '正常なレスポンスであることを確認する' do
    it '採用担当者一覧画面が表示されること' do
      get users_path
      expect(response).to have_http_status "200"
    end

    it '採用担当者詳細画面が表示されること' do
      get user_path(user)
      expect(response).to have_http_status "200"
    end
  end
end
