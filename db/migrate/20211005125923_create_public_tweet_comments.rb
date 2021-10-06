class CreatePublicTweetComments < ActiveRecord::Migration[5.2]
  def change
    create_table :public_tweet_comments do |t|
      t.integer :user_id
      t.integer :tweet_id

      t.timestamps
    end
  end
end
