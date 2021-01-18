RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  describe '必須項目が入力されていないと新規登録できないことを確認する' do
    it 'メールアドレス、名前、パスワードが有効な状態であること' do
      expect(user).to be_valid
    end

    it 'メールアドレスがなければ無効な状態であること' do
      user = User.new(email: nil)
      user.valid?
      expect(user.errors[:email]).to include('を入力してください')
    end

    it '名前がなければ無効な状態であること' do
      user = User.new(name: nil)
      user.valid?
      expect(user.errors[:name]).to include('を入力してください')
    end

    it 'パスワードがなければ無効な状態であること' do
      user = User.new(password: nil)
      user.valid?
      expect(user.errors[:password]).to include('を入力してください')
    end

    it '重複しないメールアドレスだと有効な状態であること' do
      user
      user = User.new(email: 'testuser@gmail.com')
      user.valid?
      expect(user.errors[:email]).not_to include('はすでに存在します')
    end

    it '名前の文字数が60字以上だと登録できないこと' do
      user = User.new(name: 'a' * 61)
      expect(user).to be_invalid
    end
  end

  describe '入力した項目が保存できているか確認する' do
    it '必須項目が入力されていて、保存できること' do
      user
      expect(user.save).to be_truthy
    end

    it '必須項目が入力されていないので、保存できないこと' do
      user = User.new
      expect(user.save).to be_falsey
    end
  end
end
