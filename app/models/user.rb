class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :body

  validates :name, presence: true
  # validates :sex, presence: true
  validates :birthday, presence: true
  validates :height, presence: true
  validates :weight, presence: true

  #refileが特定のカラムにアクセスするための記述
  attachment :profile_image

# パスワードなしでuser_edit
  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end

  enum activity_level: { low: 0, middle: 1, high: 2 }

end