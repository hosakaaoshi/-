class Public::TweetCommentsController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    comment = tweet.tweet_comments.new(tweet_comment_params)
    comment.tweet_id = tweet.id
    comment.user_id = current_user.id
    comment.save
    redirect_to tweet_path(tweet.id)
  end

 def destroy
 end

  private

  def tweet_comment_params
    params.require(:tweet_comment).permit(:omment)
  end
end
