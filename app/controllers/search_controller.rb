class SearchController < ApplicationController
  def index
    @pets = Pet.where(city: params[:city], animal_type: params[:animal_type])

  end

  def show
  end

 private
  def search_params
    params.permit(:city, :animal_type, :breed, :gender, :size, :age, :status)
  end

  # def filtering_params(params)
  #   params.slice(:city, :animal_type, :breed, :gender, :size, :age, :status)
  # end

end



# "%#{params[:type]}%"