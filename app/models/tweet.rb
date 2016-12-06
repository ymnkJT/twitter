class Tweet < ActiveRecord::Base
  validates :content, length: {
    minimum: 1,
    maximum: 255,
    too_short: "空白では投稿できません。1文字以上入力して下さい。",
    too_long: "投稿は255バイト（全角127文字）以内にして下さい"
  }
end
