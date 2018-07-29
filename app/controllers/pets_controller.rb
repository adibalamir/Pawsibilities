class PetsController < ApplicationController
  def index
  end

  def show
    @pet = Pet.find params[:id]

    if @pet.animal_type == "Dog"
      @highlights = JSON.parse(DogHighlight.find_by(breed: @pet.breed).highlights)
    end
  end

end
