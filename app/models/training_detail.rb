class TrainingDetail < ApplicationRecord

  belongs_to :training

  enum body_part: { chest: 0, back: 1, shoulder: 2, arm: 3, leg: 4, aerobic: 5, others: 6 }

  validates :weight, presence: true
  validates :repetition, presence: true
  validates :body_part, presence: true
  validates :training_name, presence: true

end
