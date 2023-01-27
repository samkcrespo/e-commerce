class CategoriesController < ApplicationController
    def index
        # products = Product.all
        render json: Category.all
    end

    def create
        category = Category.create(category_params)
        render json: category, status: :created
    end


    private

    def category_params
     params.permit(:name, :description, :image_preview)
    end

end
