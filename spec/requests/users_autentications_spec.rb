RSpec.describe "UsersAutentications", type: :request do
  let(:user) { create(:user) }
  let(:user_params) { attributes_for(:user) }
  let(:invalid_user_params) { attributes_for(:user, name: "") }

  describe 'GET #editを確認する' do
    subject { get edit_user_registration_path }

    context 'ログインしている場合' do
      before do
        sign_in user
      end

      it 'リクエストが成功すること' do
        is_expected.to eq 200
      end
    end

    context 'ログインしていない場合' do
      it 'リダイレクトされること' do
        is_expected.to redirect_to new_user_session_path
      end
    end
  end
end
