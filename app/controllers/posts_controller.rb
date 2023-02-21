class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @place = Place.find_by({ "id" => params["id"]})
    end


    def new
        @place = Place.new
    end

    def create
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place["created_at"] = params["place"]["created_at"]
        @place["updated_at"] = params["place"]["created_at"]
        @place.save
        redirect_to "/places"

    end

end
