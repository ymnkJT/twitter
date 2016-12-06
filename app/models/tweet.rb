class Tweet < ActiveRecord::Base
  validates :content, length: {
    minimum: 1,
    maximum: 255,
    too_short: "空白の投稿はできません。1文字以上入力して下さい。",
    too_long: "文字数は255字以内にして下さい。",
  }
end
