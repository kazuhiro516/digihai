module ApplicationHelper
  BASE_TITLE = 'DIGIHAI'.freeze
  # 定数が上書きされないようにするため。
  def full_title(page_title)
    if page_title.blank?
      BASE_TITLE
    else
      "#{page_title} | #{BASE_TITLE}"
    end
  end

  def avatar_url(user)
    # 引数で与えられたユーザーの画像を返す処理
    return user.profile_photo unless user.profile_photo.nil?
    gravatar_id = Digest::MD5.hexdigest(user.email).downcase
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg"
  end
end
