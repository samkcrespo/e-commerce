class CategoriesController < ApplicationController
    def index
        # products = Product.all
        render json: Category.all
    end

end
