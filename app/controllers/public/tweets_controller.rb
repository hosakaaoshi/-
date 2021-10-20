class Public::TweetsController < ApplicationController
  def index
    @tweet = Public::Tweet.new
    @tweets = Public::Tweet.all
    #@tweet_comment = TweetComment.new
  end

  def show
    @tweet = Public::Tweet.find(params[:id])
    @comment = Public::TweetComment.new
  end

  def new
    @tweet = Public::Tweet.new

  end

  def create
    @tweet = Public::Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    @tweet.save
    redirect_to public_tweets_path
  end

  def edit
    @tweet = Public::Tweet.find(params[:id])
  end

  def update
    tweet = Public::Tweet.find(params[:id])
    tweet.update(tweet_params)
    redirect_to public_tweet_path
  end

 private
  def tweet_params
   params.require(:public_tweet).permit(:body, :image)
  end
end
