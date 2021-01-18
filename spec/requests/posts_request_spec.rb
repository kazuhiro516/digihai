RSpec.describe "Posts", type: :request do
  let(:post) { create(:post) }
  let(:user) { create(:user) }
  let(:photo) { create(:photo) }

  describe '正常にレスポンスが返ってくることを確認する' do
    before do
      sign_in user
    end

    it '新規投稿画面が表示されること' do
      get new_post_path
      expect(response).to have_http_status "200"
    end

    it '求人一覧画面が表示されること' do
      get posts_path
      expect(response).to have_http_status "200"
    end

    it '投稿詳細画面が表示されること' do
      get post_path(photo)
      expect(response).to have_http_status "200"
    end
  end
end
