FactoryBot.define do
  factory :review do
    association :user
    association :private_business_user
    score { 5 }
  end
end
