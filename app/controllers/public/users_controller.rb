class Public::UsersController < ApplicationController
 def show
  @user = Public::User.find(params[:id])
  @tweet = @user.tweet
  #@image = Image.find(params[:id])
 end

 def edit
  @user = Public::User.find(params[:id])
 end

 def update
  @user = Public::User.find(params[:id])
  @user.update(user_params)
   redirect_to public_user_path
 end

 private

  def user_params
    params.require(:public_user).permit(:name, :profile_image)
  end



end

