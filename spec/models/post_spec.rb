RSpec.describe Post, type: :model do
  let(:user) { create(:user) }

  describe '必須項目が入力されていないと投稿できないことを確認' do
    it '応募条件、登録されたユーザーである場合、有効であること' do
      post = Post.create(
        content: "test",
        title: "sampletitle",
        user_id: user.id
      )
      expect(post).to be_valid
    end

    it '応募条件がないと無効であること' do
      post = Post.new(content: nil)
      post.valid?
      expect(post.errors[:content]).to include('を入力してください')
    end

    it '登録されたユーザーでないと無効であること' do
      post = Post.new(user_id: nil)
      post.valid?
      expect(post.errors[:user_id]).to include('を入力してください')
    end
  end

  describe '入力した項目が保存できているか確認する' do
    it '必須項目が入力されていて、保存できること' do
      post = Post.create(
        content: "test",
        title: "sampletitle",
        user_id: user.id
      )
      expect(post.save).to be_truthy
    end

    it '必須項目が入力されていないので、保存できないこと' do
      post = Post.new
      expect(post.save).to be_falsey
    end
  end
end
