class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy
  attachment :profile_image # ここを追加
  validates :name, presence: true
  validates :name, length: {minimum: 2} #2文字以上
  validates :name, length: {maximum: 20} #20文字以下

end
