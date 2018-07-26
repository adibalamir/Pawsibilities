class PetfinderService
  attr_accessor :petfinder
  def initialize(apiKey, apiSecret)
    @petfinder = Petfinder::Client.new(apiKey, apiSecret)

  end

  def find_pets_by_type(type, location)
    @pets = @petfinder.find_pets(type, location)
  end

end
