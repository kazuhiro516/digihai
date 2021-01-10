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

#private_business_userを作成する
PrivateBusinessUser.create(name: "鈴木浩一")
PrivateBusinessUser.create(name: "岩田りさ")
PrivateBusinessUser.create(name: "古川岬")
PrivateBusinessUser.create(name: "田辺健作")
