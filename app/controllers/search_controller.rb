class SearchController < ApplicationController
  def index
    query = {
      city: params[:city],
      animal_type: params[:animal_type],
    }

    @selected_sizes = (params[:size].present? ? params[:size] : [])
    @selected_ages = (params[:age].present? ? params[:age] : [])
    @selected_genders = (params[:gender].present? ? params[:gender] : [])

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
  end

  def show
  end
end