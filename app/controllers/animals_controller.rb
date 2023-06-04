class AnimalsController < ApplicationController
    def index
        animals = Animal.all
        render json:animals
    end

    def show
        animals = Animal.find(params[:id])
        render json:Animal
    end

    def create
        animals = Animal.create(animal_params)
        if animals.valid?
            render json:animals
        else
            render json:animals.errors
        end
    end

    def update
        animals = Animal.find(params[:id])
        animals.update(animals_params)
        if animals.valid?
            render json:animals
        else
            render json:animals.errors
        end
    end

    def destroy
        animals = Animal.find(params[:id])
        animals.destroy
        if animals.destroy
            render json:animals
        else
            render json: animals.errors
        end
    end


    private
    def animals_params
        params.require(:animals).permit(:common_name,:scientific_)
    end
end
