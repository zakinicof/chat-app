class Room < ApplicationRecord
  has_many :room_users
  # 中間テーブルを経由、roomが削除されたらmessageとuserも一緒に削除されるように記述
  has_many :users, through: :room_users, dependent: :destroy
  has_many :messages, dependent: :destroy
  # ルーム名が空の時は新規作成できないように設定
  validates :name, presence: true
end
