class Public::User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweet
  has_many :tweet_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  

end

#Public::Tweet モデル -> userを識別するカラムがない -> 追加
#Public::Tweet モデル と Public::User モデル association 　の定義　が必要
#@user.tweets という形式で、自身のtweetsを取得可能。これまでに作成したアプリを参考に。