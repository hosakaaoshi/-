class Public::Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :tweet
  # belongs_to :tweet_comment

  # validates :tweet_comment_id, uniqueness: { scope: :user_id }
end
#