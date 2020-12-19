module ApplicationHelper
	BASE_TITLE = 'DIGIHAI'.freeze
#定数が上書きされないようにするため。
  def full_title(page_title)
    if page_title.blank?
      BASE_TITLE
    else
      "#{page_title} | #{BASE_TITLE}"
    end
  end
end
