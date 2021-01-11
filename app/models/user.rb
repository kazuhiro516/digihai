class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many  :posts, dependent: :destroy
  #reviewモデルにアソシエーションの設定
  has_many  :reviews, dependent: :destroy
  has_many  :likes
  validates :name, presence: true, length: { maximum: 60 }

  #ユーザー体験を向上させるためパスワードの入力を省略
  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update(params, *options)
    clean_up_passwords
    result
  end

  #ゲストログイン用のメソッドを定義
  def self.guest
    find_or_create_by!(name: 'guest',email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
