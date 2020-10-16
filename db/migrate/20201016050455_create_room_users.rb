class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      # Railsで外部キーのカラムを追加する際に用いる型
      # 他テーブルの情報（ここでは、roomとuserテーブル）を参照できる。
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
