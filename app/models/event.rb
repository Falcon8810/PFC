class Event < ApplicationRecord

  validates :name, uniqueness: true

  has_many :trainings

  enum body_part: { chest: 0, back: 1, shoulder: 2, arm: 3, leg: 4, aerobic: 5, others: 6 }

end
