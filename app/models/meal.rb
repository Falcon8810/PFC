class Meal < ApplicationRecord

  belongs_to :user
  has_many :meal_details, dependent: :destroy

  accepts_nested_attributes_for :meal_details, allow_destroy: true

  enum category: { breakfast: 0, lunch: 1, dinner: 2, snack: 3 }

  attachment :image

  validates :date, presence: true
  validates :category, presence: true

end