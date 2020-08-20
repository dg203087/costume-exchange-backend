class Api::V1::CostumesController < ApplicationController
    def index
        if params[:id] 
            costumes = Costume.find_by(category_id: params[:id])
        else
            costumes = Costume.all
        end

        render json: costumes
    end

    def create
       
        costume = Costume.new(costume_params)
        # costume.category_id = params['categories'][0]['id']
     
        if costume.save
            # costume.avatar.attach(params[:avatar])
            # photo = url_for(costume.avatar)
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
        costumes = Costume.all 
        render json: costumes
    end

    private
    def costume_params
        params.require(:costume).permit(
            :id, 
            :title, 
            :price, 
            :owner_name, 
            :owner_email, 
            :location, 
            :description, 
            :category_id,
            :photo
        )
    end

end
