class ApplicationController < ActionController::Base

  def current_user
    user_array = [User.find_by(id: session[:user_id]), Shelter.find_by(id: session[:user_id])]
    user_array.each do |user|
    @current_user ||= user if session[:user_id]
    end
    return @current_user
  end

  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

end
