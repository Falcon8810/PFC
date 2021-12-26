class MealDetail < ApplicationRecord

  belongs_to :meal

  validates :name, presence: true
  validates :calory, presence: true
  validates :protein, presence: true
  validates :fat, presence: true
  validates :carb, presence: true

end
