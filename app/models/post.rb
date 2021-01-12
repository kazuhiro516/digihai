class Post < ApplicationRecord
  belongs_to :user
  has_many   :photos, dependent: :destroy
  has_many   :likes, -> { order(created_at: :desc) }, dependent: :destroy
  accepts_nested_attributes_for :photos
  # プログラマが意図しないクエリの発行を防ぐため。
  scope :post, -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true

  def liked_by(user)
    # user_idとpost_idが一致するlikeを検索する処理
    Like.find_by(user_id: user.id, post_id: id)
  end
end
