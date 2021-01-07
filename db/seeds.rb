# メインユーザーの設定
User.create!(name:  "Kurokawa Kazuhiro",
             email: "kurokawa@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar")

# ユーザーをまとめて生成する
100.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
