class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = [ "chinese", "italian", "japanese", "french", "belgian" ]

  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :name, :address, :category, presence: true
end
