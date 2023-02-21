class PlacesController < ApplicationController
    def index
        @places = Place.all
        @posts = Post.all
    end

    def show
        @place = Place.find_by({ "id" => params["id"]})
        @posts = Post.all
    end


    def new
        @place = Place.new
    end

    def create
        @place = Place.new
        @place["name"] = params["place"]["name"]
    
        @place.save
        redirect_to "/places"

    end


end
