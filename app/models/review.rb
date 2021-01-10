class Review < ApplicationRecord
  belongs_to :user
  belongs_to :private_business_user
  validates  :score, presence: true
end
