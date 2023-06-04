class SightingsController < ApplicationController

    def index
        sighting = Sighting.all
        render json:sighting
    end

    def show
        sighting = Sighting.find(id: params[:id])
        render json:sighting, include: [:animal]
    end

    def create
        sightings = Sighting.create(sighting_params)
        if sighting.valid?
            render json:sightings
        else
            render json:sighting.errors
        end
    end

    def update
        sightings = Sighting.find(params[:id])
        sightings.update(sighting_params)
        if sightings.valid?
            render json:sightings
        else
            render json:sighting.errors
        end
    end

    def destroy
        sightings = Sighting.find(params[:id])
        sightings.destroy
        if sightings.destroy
            render json:sightings
        else
            render json: sightings.errors
        end
    end


    private
    def sighting_params
        params.require(:sighting).permit( :animal_id,:latitude,:longitude,:animal)
    end
end