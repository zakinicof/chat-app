class Room < ApplicationRecord
  has_many :room_users
  # 中間テーブルを経由
  has_many :users, through: :room_users
  has_many :messages
  # ルーム名が空の時は新規作成できないように設定
  validates :name, presence: true
end
