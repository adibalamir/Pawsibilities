class SearchController < ApplicationController
  def index
    @pets = Pet.where(
      city: params[:city],
      animal_type: params[:animal_type],
      )
    @filtered = @pets.where(breed: params[:breed], gender: params[:gender], age: params[:age], size: params[:size])
    puts "-------filtered--------"
    puts @filtered
  end

  def show
  end

 private
  def search_params
    params.permit(:city, :animal_type, :breed, :gender, :size, :age)
  end
end

