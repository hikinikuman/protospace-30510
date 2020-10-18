class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      #各カラムの後の内容にforeign_key: trueがつくかもしれない可能性に注意

      #↓まだ外部キー(foreign_key)の使い所が分かっていないので既定
      #imageが書かれていないので書く入力フォームでの"プロトタイプの画像"のところは注意
      t.string     :title,      null: false
      t.text       :catch_copy, null: false
      t.text       :concept,    null: false
      t.references :user,       foreign_key: true

      t.timestamps
    end
  end
end
