class UsersController < ApplicationController

  def new
    Registration.sign_up_params
  end

  def edit
    Registration.account_update_params
  end

  def show
    user = User.find(params[:id])
    @tweeets = user.tweeets
  end

end
