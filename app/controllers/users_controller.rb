class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    @user = User.create(user_params)
    @user.save
    redirect_to users_path
  end

  def show
    @users = User.find(params[:id])
  end

  def edit
    @users = User.find(params[:id])
  end

  def update
    @users = User.find(params[:id])
    @users.update(user_params)
    redirect_to users_path
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit!
  end
end
