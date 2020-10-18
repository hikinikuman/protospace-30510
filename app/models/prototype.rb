class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  #↑もしかしたら違う可能性があるので注意
  #ちなみに参考カリキュラムでは「has_one_attached :ファイル名」と記載
  #ストロングパラメーターも自分で制作する可能性アリ

  validates :title,      presence: true
  validates :catch_copy, presence: true
  validates :concept,    presence: true
  validates :image,      presence: true

  #ここも自信ないから後で直すかもネ！ 特にimageは画像の有無でバリデーションをするかの処理があるらしいし
  #https://master.tech-camp.in/curriculums/4763 ←参考カリキュラム

end
