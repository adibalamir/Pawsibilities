class SheltersController < ApplicationController
  def new
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def create
    @shelter =  Shelter.new(shelter_params)

    if @shelter.save
      session[:shelter_id] = @shelter.id
      redirect_to @shelter
    end
  end


  private

  def shelter_params
    params.require(:shelter).permit(:name, :email, :address, :phone, :province, :owner_type, :password)
  end
end
