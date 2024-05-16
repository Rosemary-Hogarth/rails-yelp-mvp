class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # deletes all reviews when restraurant is destroyed
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true
  validates :category, inclusion: {in: Restaurant::CATEGORY}
end
