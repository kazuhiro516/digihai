RSpec.feature "Users", type: :feature do
  before do
    User.create!(name: 'foobar', email: 'foo@example.com', password: '123456')
  end
  
  scenario 'ログインする' do
    visit new_user_session_path
    fill_in 'メールアドレス', with: 'foo@example.com'
    fill_in 'パスワード',    with: '123456'
    click_on 'ログインする'
    expect(page).to have_content 'サインインしました。'
  end

  scenario '新規登録する' do
    visit new_user_registration_path
    fill_in '※必須：メールアドレス',   with: 'foobar@example.com'
    fill_in '※必須：名前',           with: 'foobar'
    fill_in '※必須：パスワード',      with: '123456'
    fill_in '※必須：パスワードの確認', with: '123456'
    click_on '登録する'
    expect(page).to have_content '登録に成功しました'
  end
end
