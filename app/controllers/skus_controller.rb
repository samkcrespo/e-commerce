class SkusController < ApplicationController
    before_action :set_sku, only: [:update, :destroy]

    def create 
        sku = Sku.create(sku_params)
        render json: sku, status: :created
    end

    def update 
        @sku.update(sku_params)
        render json: @sku, status: :accepted
    end

    def destroy 
        @sku.destroy 
        head :no_content
    end


    private

    def set_sku
        @sku = Sku.find(params[:id])
    end

    def sku_params
        params.permit(:product_id, :size, :color, :price, :quantity, :image_key)
    end

end
