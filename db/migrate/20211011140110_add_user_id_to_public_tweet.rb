class AddUserIdToPublicTweet < ActiveRecord::Migration[5.2]
  def change
    add_column :public_tweets, :user_id, :integer
  end
end
