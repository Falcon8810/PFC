class Training < ApplicationRecord

  has_many :training_details, dependent: :destroy

  accepts_nested_attributes_for :training_details, allow_destroy: true

end
