class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bodies, dependent: :destroy
  has_many :meals, dependent: :destroy

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
  enum purpose: { diet: 0, keep: 1, bulkup: 2 }

# ユーザーの年齢を計算するメソッド
  def age
    d1=self.birthday.strftime("%Y%m%d").to_i
    d2=Date.today.strftime("%Y%m%d").to_i
    return (d2 - d1) / 10000
  end

  # 基礎代謝計算式
  # The Basal Metabolic Rate (BMR)
  def calc_bmr
    if sex == true
      (10 * weight) + (6.25 * height) - (5 * age) + 5
    else
      (10 * weight) + (6.25 * height) - (5 * age) - 161
    end
  end

  # 一日あたりの活動代謝
  def calc_activity_metabolism
    p "xxxxxxxxxxxxxxxx"
    # byebug
    p self.activity_level
    # p self.activity_level.middle?
    if self.activity_level == "low"
      p "low"
      calc_bmr * 1.2
    elsif self.activity_level == "middle"
      p "middle"
      calc_bmr * 1.55
    else
      p "high"
      calc_bmr * 1.725
    end
  end

  # 目的に合わせたカロリー設定
  def by_purpose
    if self.purpose == "diet"
      calc_activity_metabolism * 0.8
    elsif self.purpose == "keep"
      calc_activity_metabolism
    else
      calc_activity_metabolism * 1.2
    end
  end

  # 一日当たりのタンパク質（グラム表示）
  def protein_per_day
    weight * 2
  end

# 一日あたりの脂質（グラム表示）
  def fat_per_day
    by_purpose * 0.25 / 9
  end

# 一日あたりの炭水化物（グラム表示）
  def carb_per_day
    (by_purpose - (protein_per_day * 4 + by_purpose * 0.25)) / 4
  end

end