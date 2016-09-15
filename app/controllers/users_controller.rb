class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    @user = User.create(user_params)
    if  @user.save
      session[:user_id] = @user.id
      redirect_to home_index_path
      flash[:success] = "brugeren er oprettet"
    else 
      redirect_to new_users_path
      flash[:danger] = "fejl i brugernavn, email eller password"
    end
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
