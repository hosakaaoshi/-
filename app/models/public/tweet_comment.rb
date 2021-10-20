class Public::TweetComment < ApplicationRecord
  validates :content, { presence: true }
  validates :user_id, { presence: true }
  validates :tweet_id, { presence: true }
  has_many :favorites, dependent: :destroy
  belongs_to :user
  belongs_to :tweet
  
  
end
