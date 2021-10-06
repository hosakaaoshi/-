class CreatePublicTweetComments < ActiveRecord::Migration[5.2]
  def change
    create_table :public_tweet_comments do |t|

      t.timestamps
    end
  end
end
