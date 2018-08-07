class SessionsController < ApplicationController

  def new
  end

  def create
    if @user = User.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = @user.id
      redirect_to '/search'
    elsif @shelter = Shelter.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = @shelter.id
      redirect_to @shelter
    elsif params[:email]=== "" || params[:password]===""
      redirect_to('/login', {:flash => {:error => "These field can't be empty"}})

    else
      puts "-------------------------Invalid Email--------------------------"
      # flash[:error] = 'Invalid email/password combination'
      redirect_to('/login', {:flash => {:error => "Invalid email/password combination"}})
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
