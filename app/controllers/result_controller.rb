class ResultController < ApplicationController

  def index

    @breed_query = Hash.new

    first_pet (params[:first_pet])
    kids (params[:family_members])
    other_pets(params[:family_members])
    likes_strangers(params[:family_members])
    coat_size(params[:coat_size])
    pet_size(params[:breed_size])
    activity_level(params[:independence])
    independence(params[:attention])
    noisy(params[:noise_level])
    trainability (params[:moderate])

    @breeds = DogBreedTrait.where(@breed_query)

    breed_array = []

    @breeds.each{|x| breed_array.push(x.breed)}

    query = {
      animal_type: params[:animal_type],
      breed: breed_array
    }

    @pets = Pet.where(query)

  end


  private

  def first_pet (value)
    if value === false
      @breed_query[:goodForNoviceOwner] = [1, 2]
    else
      @breed_query[:goodForNoviceOwner] = [3, 4, 5]
    end
  end


  def kids (value)
    if value === "Kids"
      @breed_query[:likesKids] = [3, 4, 5]
    end
  end


  def other_pets (value)
    if value === "Other_pets"
      @breed_query[:likesDogs] = [3, 4, 5]
    end
  end

  def likes_strangers (value)
    if value === "Stranger"
      @breed_query[:likesStrangers] = [3, 4, 5]
    end
  end


  def coat_size (value)
    if value === "Short"
      @breed_query[:sheds] = [1, 2]
    elsif value === "Medium"
      @breed_query[:sheds] = [1, 2, 3]
    elsif value === "Long"
      @breed_query[:sheds] = [4, 5]
    end
  end


  def pet_size (value)
    if value === "Small"
      @breed_query[:size] = [1, 2]
    elsif value === "Medium"
      @breed_query[:size] = [3]
    elsif value === "Large"
      @breed_query[:size] = [ 4, 5]
    end
  end



  def activity_level (value)

    if value === "Moderate_time"
      @breed_query[:activityLevel] = [1, 2, 3]
    elsif value === "No_time"
      @breed_query[:activityLevel] = [ 1 ]
    end
  end

# ability to walk the pet
# 4-5 more than 5 hrs with the pet
# 1-3 less than 5 hrs with the pet


def independence (value)

  if value === "Curious"
    @breed_query[:toleratesBeingAlone] = [1, 2, 3]
  elsif value === "Chilled"
    @breed_query[:toleratesBeingAlone] = [ 1, 2 ]
  end
end


def noisy (value)

  if value === "Quiet"
    @breed_query[:barks] = [1, 2, 3]
  end
end



def trainability (value)

  if value === "Trained"
    @breed_query[:easyToTrain] = [4, 5]
  end
end
end
