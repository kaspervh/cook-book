class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to home_index_path
  		flash[:success] = "du er nu logget ind"
  	else 
  		redirect_to sessions_new_path
  		flash[:success] = "fejl i email eller kodeord"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to home_index_path
  	flash[:notice] = "du er nu logget ud"
  end
end
