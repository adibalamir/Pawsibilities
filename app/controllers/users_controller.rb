
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def update
    @user = User.find_by(id: current_user)
    @user.update_attributes( query_params )
    respond_to do |format|
      if @user.save

        format.html { redirect_to @user, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def new
  end

  def create

    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/search'
    else
      redirect_to('/signup', {:flash => {:error => "Another account is using #{user_params[:email]}."}})
    end

  end

  private

  def user_params
    params.require(:user).permit( :email , :password)
  end

  def set_user
    @user = User.find(current_user.id)
  end

  def query_params
    params.permit(:query)
  end

end
