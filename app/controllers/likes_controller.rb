class LikesController < ApplicationController


    def index
      @user_likes = LikePet.where(user_id: current_user)
      pet_query = []
      @user_likes.each{|x| pet_query.push(x.pet_id)}

      @liked_pets = Pet.where(id: pet_query)

    end

    def create
      @like = LikePet.new(like_params)

      if @like.save
        puts "-----------------------------------------------------------------"
        puts "You liked this pet"
      else
        puts "-----------------------------------------------------------------"
        puts "Your like is not saved :("
      end
    end

    def destroy
      LikePet.where(like_params).first.destroy
        puts "-----------------------------------------------------------------"
        puts "unliked :( "
    end

    private

    def like_params
      params.permit(:user_id, :pet_id)
    end

end
