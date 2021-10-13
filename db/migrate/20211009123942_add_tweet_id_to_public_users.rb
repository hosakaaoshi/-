class AddTweetIdToPublicUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :public_users, :tweet_id, :string
  end
end
