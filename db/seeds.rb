# メインユーザーの設定
profile_photo =Faker::Avatar.image
User.create!(name:  "Kurokawa Kazuhiro",
             email: "kurokawa@gmail.com",
             profile_photo: profile_photo,
             password:              "foobar",
             password_confirmation: "foobar")

# ユーザーをまとめて生成する
50.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "password"
  profile_photo = Faker::Avatar.image
  User.create!(name:  name,
               email: email,
               profile_photo: profile_photo,
               password:              password,
               password_confirmation: password)
end

# private_business_userを作成する
50.times do |n|
  name = Faker::Name.name
  PrivateBusinessUser.create(name: name)
end
