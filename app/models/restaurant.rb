class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORYS = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :address, :category, :name, presence: true
  validates :category, inclusion: { in: CATEGORYS }
end
