RSpec.describe Review, type: :model do
  let(:review) { create(:review) }

  describe 'レビューを入力していないと投稿できないことを確認する' do
    it 'レビューが入力されている場合、有効であること' do
      expect(review).to be_valid
    end

    it 'レビューが入力されていなければ、無効であること' do
      review = Review.new(score: nil)
      review.valid?
      expect(review.errors[:score]).to include('を入力してください')
    end
  end

  describe '入力したレビューが保存されていることを確認する' do
    it 'レビューが入力されていて、保存できること' do
      review
      expect(review.save).to be_truthy
    end

    it 'レビューが入力されていないので、保存できないこと' do
      review = Review.new
      expect(review.save).to be_falsey
    end
  end
end
