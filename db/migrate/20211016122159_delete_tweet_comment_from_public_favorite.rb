class DeleteTweetCommentFromPublicFavorite < ActiveRecord::Migration[5.2]
  def change
    remove_column :public_favorites, :tweet_comment_id
  end
end
