class Public::FavoritesController < ApplicationController
  def create
    @tweet = Public::Tweet.find(params[:tweet_id])
    favorite = Public::Favorite.new(user_id: current_user.id, tweet_id: @tweet.id)
    # favorite = current_user.favorites.new(tweet_id: @tweet.id)
    favorite.save
    render 'public/favorite/create.js.erb'
  end

  def destroy
    @tweet = Public::Tweet.find(params[:tweet_id])
    favorite = Public::Favorite.find_by(user_id: current_user.id, tweet_id: @tweet.id)
    # favorite = current_user.favorites.find_by(tweet_id: @tweet.id)
    favorite.destroy
    render 'public/favorite/destroy.js.erb'
  end
end
