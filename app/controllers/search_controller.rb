class SearchController < ApplicationController

  def index
    query = {
      city: params[:city],
      animal_type: params[:animal_type],
    }

    @selected_cities = (params[:city].present? ? params[:city] : [])
    @selected_sizes = (params[:size].present? ? params[:size] : [])
    @selected_ages = (params[:age].present? ? params[:age] : [])
    @selected_genders = (params[:gender].present? ? params[:gender] : [])
    @selected_breeds = (params[:breed].present? ? params[:breed] : [])

    if (!params[:size].nil? && !params[:size].empty?)
      query[:size] = params[:size]
    end

    if (!params[:breed].nil? && !params[:breed].empty?)
      query[:breed] = params[:breed]
    end

    if (!params[:gender].nil? && !params[:gender].empty?)
      query[:gender] = params[:gender]
    end

    if (!params[:age].nil? && !params[:age].empty?)
      query[:age] = params[:age]
    end

    @pets = Pet.where(query)

    respond_to do |format|
      format.html
      format.json {render json: @pets}
      format.js
    end
  end

  def show
    render json: @pets
  end
end