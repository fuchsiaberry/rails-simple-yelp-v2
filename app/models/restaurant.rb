class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  categories = [ "chinese", "italian", "japanese", "french", "belgian" ]

  validates :category, presence: true, inclusion: { in: categories }
  validates :name, :address, :category, presence: true
end
