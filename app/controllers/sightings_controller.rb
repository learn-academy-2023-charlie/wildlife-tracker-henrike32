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
        sighting = Sighting.create(sighting_params)
        if sighting.valid?
            render json:sighting
        else
            render json:sighting.errors
        end
    end

    def update
        sighting = Sighting.find(params[:id])
        sighting.update(sighting_params)
        if sighting.valid?
            render json:sighting
        else
            render json:sighting.errors
        end
    end

    def destroy
        sighting = Sighting.find(params[:id])
        sighting.destroy
        if sighting.destroy
            render json:sighting
        else
            render json: sighting.errors
        end
    end


    private
    def sighting_params
        params.require(:sighting).permit( :animal_id,:latitude,:longitude,:animal)
    end

end
