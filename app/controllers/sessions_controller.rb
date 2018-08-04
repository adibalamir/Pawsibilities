class SessionsController < ApplicationController

  def new
  end

  def create
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to '/search'
    elsif @shelter = Shelter.authenticate_with_credentials(params[:email], params[:password])
      session[:shelter_id] = shelter.id
      redirect_to @shelter
    else
      flash[:error] = 'Invalid email/password combination'
      redirect_to '/login'
    end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
