FactoryBot.define do
  factory :user do
    name { "testuser" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password              { "foobar" }
    password_confirmation { "foobar" }
  end
end
