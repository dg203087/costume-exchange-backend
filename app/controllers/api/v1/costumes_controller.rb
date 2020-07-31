class Api::V1::CostumesController < ApplicationController
    def index
        costumes = Costume.all 
        render json: costumes
    end

    def create
        costume = Costume.new(costume_params)
        if costume.save
            render json: costume
        else
            render json: {error: "Invalid Costume"}
        end
    end

    def show
        costume = Costume.find(params[:id])
        render json: costume 
    end

    def destroy
        costume = Costume.find(params[:id])
        costume.destroy
    end

    private
    def costume_params
        params.require(:costume).permit(:title, :price, :owner_name, :owner_email, :location, :decription, :photos)
    end

end
