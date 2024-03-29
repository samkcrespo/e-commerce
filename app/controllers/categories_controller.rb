class CategoriesController < ApplicationController
  
    skip_before_action :authorize, only: [:index, :show]
    before_action :set_category, only: [:update, :destroy, :show]

    def index
        categories = Category.all
        render json: categories, include: ['products', 'products.skus'], status: :ok
    end

    def show
        render json: @category, include: ['products', 'products.skus'], status: :ok
    end

    def create 
        category = Category.create(category_params)
        render json: category, include: ['products', 'products.skus'], status: :created
    end

    def update 
        @category.update(category_params)
        render json: @category, include: ['products', 'products.skus'], status: :accepted
    end

    def destroy 
        @category.destroy 
        head :no_content
    end


     private

    def set_category
        @category = Category.find(params[:id])
    end

    def category_params
     params.permit(:name, :description, :image_preview)
    end

end
