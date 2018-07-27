class SearchController < ApplicationController
  def index
    @pets = Pet.where(nil)
    filtering_params(params).each do |key, value|
      @pets = @pets.public_send(key, value) if value.present?
    end
  end

  def show
  end

  private
  def filtering_params(params)
    params.slice(:city, :animal_type, :breed, :gender, :size, :age, :status)
  end
end
