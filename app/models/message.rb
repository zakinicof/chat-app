class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  # Messagesテーブルのレコードと画像を紐づけ
  has_one_attached :image
  validates :content , presence: true
end
