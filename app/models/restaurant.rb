class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES }
  validates :name, :address, presence: true
end
