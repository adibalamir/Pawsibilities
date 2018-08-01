class PetsController < ApplicationController
  def index
  end

  def show
    @pet = Pet.find params[:id]
    @shelter = Shelter.find_by(shelter_id: @pet.shelter_id)
    if @pet.animal_type == "Dog"
      @highlights = JSON.parse(DogHighlight.find_by(breed: @pet.breed).highlights)
    end

    if @pet.animal_type == "Cat"
      @highlights = JSON.parse(CatHighlight.find_by(breed: @pet.breed).highlights)
    end
  end

end
