class Public::Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :tweet
  belongs_to :tweet_comment
  
  validates_uniqueness :comment_id, scope: :user_id
end
