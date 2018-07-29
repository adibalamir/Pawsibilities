class PetsController < ApplicationController
  def index
  end

  def show
    @pet = Pet.find params[:id]

    if @pet.animal_type == "Dog"
      @highlights = Dog_highlight.find
  end

end
