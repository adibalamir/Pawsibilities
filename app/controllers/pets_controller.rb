class PetsController < ApplicationController
  def index
  end

  def show
    @pet = Pet.find params[:id]

    if @pet.animal_type == "Dog"
      @highlights = DogHighlight.find_by(breed: "siberian-husky").highlights
    end
  end

end
