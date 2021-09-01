class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @tweeets = user.tweeets
    @user_id = user.id
  end

  # Follows a user.
  def follow(other_user)
    user = User.find(params[:id])
    active_relationships.create(followed_id: other_user.id)
  end

  # Unfollows a user.
  def unfollow(other_user)
    user = User.find(params[:id])
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end

end
