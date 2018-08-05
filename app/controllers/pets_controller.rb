class PetsController < ApplicationController

  def index
  end

  def new

  end

  def create
    @pet =  Pet.new(pet_params)
    @pet.status = "A"

    if @pet.save
      session[:pet_id] = @pet.id
      redirect_to :back
    else
      flash[:error] = "An error occured!"

      redirect_to :back
    end
  end

  def show
    @pet = Pet.find params[:id]
    @liked = LikePet.where(user_id: current_user, pet_id: @pet.id)

    @shelter = Shelter.find_by(shelter_id: @pet.shelter_id)

    if @pet.animal_type == "Dog"
      @highlights = JSON.parse(DogHighlight.find_by(breed: @pet.breed).highlights)
    end

    if @pet.animal_type == "Cat"
      @highlights = JSON.parse(CatHighlight.find_by(breed: @pet.breed).highlights)
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:city, :animal_type, :breed, :name, :gender, :size, :age, :status, :description)
  end

end
