class UsersController < ApplicationController

  def display_all
    @user = User.includes(:posts, :comments).find(params[:id])
  end

end
