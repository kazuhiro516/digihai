FactoryBot.define do
  factory :photo do
    association :post
    image   { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test_image.jpg')) }
  end
end
