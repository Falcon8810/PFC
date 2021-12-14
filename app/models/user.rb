class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  # validates :sex, presence: true
  validates :birthday, presence: true
  validates :height, presence: true
  validates :weight, presence: true

  #refileが特定のカラムにアクセスするための記述
  attachment :profile_image

end
