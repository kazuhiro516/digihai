RSpec.describe "Reviews", type: :request do
  let(:private_business_user) { create(:private_business_user) }
  let(:review) { create(:review) }
  let(:user) { create(:user) }
  let(:user_params) { attributes_for(:user) }

  describe 'GET #index' do
    it 'レビュー一覧が表示されること' do
      get private_business_user_reviews_path(private_business_user)
      expect(response).to have_http_status "200"
    end
  end
end
