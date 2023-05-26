class AnimalsController < ApplicationController
    def index
        animal = Animal.all
        render json:animal
    end

    def show
        animal = Animal.find(params[:id])
        render json:Animal
    end

    def create
        animal = Animal.create(animal_params)
        if animal.valid?
            render json:animal
        else
            render json:animal.errors
        end
    end

    def update
        animal = Animal.find(params[:id])
        animal.update(animal_params)
        if animal.valid?
            render json:animal
        else
            render json:animal.errors
        end
    end

    def destroy
        animal = Animal.find(params[:id])
        animal.destroy
        if animal.destrou
            render json:animal
        else
            render json: animal.errors
        end
    end



    private
    def animal_params
        params.require(:animal).permit(:common_name,:scientific_)
    end


end