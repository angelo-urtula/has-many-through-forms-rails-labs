class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.create(user_params)
    redirect_to user
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
