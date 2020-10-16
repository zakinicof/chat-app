class Room < ApplicationRecord

  has_many :room_users
  # 中間テーブルを経由
  has_many :users, through: :room_users
end
