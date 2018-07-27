class SearchController < ApplicationController
  def index
    @pets = Pet.where(
      city: params[:city],
      animal_type: params[:animal_type],
      breed: params[:breed],
      gender: params[:gender],
      size: params[:size],
      age: params[:age],
      status: "A"
      )
  end

  def show
  end

 private
  def search_params
    params.permit(:city, :animal_type, :breed, :gender, :size, :age)
  end
end

