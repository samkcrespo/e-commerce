class ProductsController < ApplicationController

    skip_before_action :authorize, only: [:index, :show]
    before_action :set_product, only: [:update, :destroy, :show]

    def index
        # products = Product.all
        render json: Product.all
    end

    def show
        render json: @product, status: :ok
    end

    def create 
        product = Product.create(product_params)
        render json: product, status: :created
    end

    def update 
        @product.update(product_params)
        render json: @product, status: :accepted
    end

    def destroy 
        @product.destroy 
        head :no_content
    end


    private

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.permit(:title, :description)
    end
  
end
