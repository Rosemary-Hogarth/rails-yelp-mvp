class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # deletes all reviews when restraurant is destroyed

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true
  validates :category, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"],
    message: "%{value} is not a valid category" }
end
