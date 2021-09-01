class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @tweeets = user.tweeets
    @user_id = user.id
  end

end
