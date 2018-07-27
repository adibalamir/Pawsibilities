class SearchController < ApplicationController
  def index
    @pets = Pet.where('city LIKE ? OR animal_type LIKE ?', "%#{params[:city]}%","%#{params[:animal_type]}%")
  end

  def show
  end

  private
  def filtering_params(params)
    params.slice(:city, :animal_type, :breed, :gender, :size, :age, :status)
  end
end
