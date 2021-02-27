# RSpec.feature "Posts", type: :feature do
#   given(:post) { create(:post) }

#   scenario '採用担当者が求人を投稿する' do
#     visit new_post_path
#     fill_in 'Title', with: post.title
#     fill_in '※必須：応募条件を書く', with: post.content
#     attach_file 'file-upload-button', 'spec/fixtures/test_image.jpeg'
#     click_on '投稿する'
#     expect(page).to have_content '投稿に成功しました'
#   end
# end
