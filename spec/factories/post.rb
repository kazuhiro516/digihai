FactoryBot.define do
  factory :post do
    content { "募集要件です" }
    association :user
    title   { "今すぐ稼げる仕事" }
    created_at { '2021-01-01T00:00:00Z' }
    updated_at { '2021-01-02T00:00:00Z' }
  end
end
