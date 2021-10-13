class Public::Tweet < ApplicationRecord
  attachment :image
  belongs_to :user
  has_many :tweet_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  def favorited?(user)
      favorites.where(user_id: user_id).exists?
  end
end