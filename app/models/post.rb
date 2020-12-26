class Post < ApplicationRecord
  belongs_to :user
  has_many   :photos, dependent: :destroy
  accepts_nested_attributes_for :photos
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true
end
