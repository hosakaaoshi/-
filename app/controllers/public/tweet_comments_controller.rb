class Public::TweetCommentsController < ApplicationController
  def create
   @comment = current_user.comments.new(comment_params)
   @comment.save
    redirect_to public_tweets_path(tweet.id)
  end

 def destroy
   @comments.destroy
   redirect_to public_tweet_path
 end

  private

  def tweet_comment_params
    params.require(:tweet_comment).permit(:comment)
  end
end
