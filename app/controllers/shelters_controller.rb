class SheltersController < ApplicationController
  def new
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def create
    @shelter =  Shelter.new(shelter_params)
    @shelter.province = "ON"
    @shelter.owner_type = "pet_owner"
    @shelter.shelter_id = "ON#{rand(1000..10000)}"

    if @shelter.save
      session[:shelter_id] = @shelter.id
      redirect_to @shelter
    else
      flash[:error] = "An error occured!"

      redirect_to '/signup/pet_owners'
    end
  end


  private

  def shelter_params
    params.require(:shelter).permit(:name, :email, :address, :phone, :province, :owner_type, :password)
  end
end
