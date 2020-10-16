class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # nameが空の状態でユーザー登録できないように設定
  validates :name, presence: true
  has_many :room_users
  has_many :messages
  # 中間テーブルを経由
  has_many :rooms, through: :room_users
end
