class Public::TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end
    
  def show
    @tweet = Tweet.find(params[:id])
  end
    
  def new
    @tweet = Tweet.new
    
  end
  
  def crate
    @tweet = Tweet.new
    tweet.save
    redirect_to public_tweet_index_path
  end
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
    redirect_to public_tweet_path
  end

 private
  def tweet_params 
   params.require(:tweet).permit(:body)
  end
end
