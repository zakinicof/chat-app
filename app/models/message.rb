class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  # Messagesテーブルのレコードと画像を紐づけ
  has_one_attached :image
  validates :content, presence: true, unless: :was_attached?
  # 画像が存在しなければテキストが必要、画像があればテキストは不要
  def was_attached?
    self.image.attached?
  end
end
