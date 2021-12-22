class Training < ApplicationRecord

  has_many :training_details, dependent: :destroy
  belongs_to :event

  accepts_nested_attributes_for :training_details, allow_destroy: true
  # accepts_nested_attributes_for :events, allow_destroy: true

end
