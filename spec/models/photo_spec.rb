RSpec.describe Photo, type: :model do
  let(:photo) { create(:photo) }

  describe '写真が選択されていないと投稿できないことを確認' do
    it '写真が選択されている場合、有効であること' do
      expect(photo).to be_valid
    end

    it '写真が選択されていないと無効であること' do
      photo = Photo.new(image: nil)
      photo.valid?
      expect(photo.errors[:image]).to include('を入力してください')
    end
  end

  describe '写真が保存できているか確認する' do
    it '写真が選択されていて、保存できること' do
      expect(photo.save).to be_truthy
    end

    it '写真が選択されていないので、保存できないこと' do
      photo = Photo.new
      expect(photo.save).to be_falsey
    end
  end
end
