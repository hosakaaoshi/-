class Public::TweetCommentsController < ApplicationController
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = tweet.tweet_comments.new(tweet_comment_params)
    @comment.tweet_id = tweet.id
    @comment.user_id = current_user.id
    @comment.save
    redirect_to public_tweets_path(tweet.id)
  end

 def destroy
   @tweet = Tweet.find(params[:tweet_id])
   @comments = Tweet_comment.find_by(params[:id])
   @tweet_comments.destroy
   redirect_to public_tweet_path
 end

  private

  def tweet_comment_params
    params.require(:tweet_comment).permit(:omment)
  end
end
