class Body < ApplicationRecord

  belongs_to :user

  attachment :image

  validates :weight, presence: true
  validates :record_date, presence: true, uniqueness: true

end
