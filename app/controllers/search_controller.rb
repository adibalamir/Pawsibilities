class SearchController < ApplicationController
  def index
    query = {
      city: params[:city],
      animal_type: params[:animal_type],
    }


    if (!params[:size].nil? && !params[:size].empty?)
      puts "-------params[:size]--------"
      puts params[:size]
      puts "-------params[:size].class--------"
      puts params[:size].class
      size_params = []
      size_params.push(params[:size])
      query[:size] = size_params
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