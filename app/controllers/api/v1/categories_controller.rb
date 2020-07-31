class Api::V1::CategoriesController < ApplicationController
    # before_action :set_costume
    
    def index
        # categories = @costume.categories
        categories = Category.all
        render json: categories
    end

    def show
        category = Category.find(params[:id])
        render json: category
    end

# private

#     def set_costume
#         @costume = Costume.find(params[:costume_id])
#     end

end
