class CreatePublicTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :public_tweets do |t|
      t.integer :tweet_id
      t.text :body
      t.text :image

      t.timestamps
    end
  end
end
