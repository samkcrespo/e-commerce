class OrdersController < ApplicationController
    
    before_action :set_order, only: [:update]
    skip_before_action :authorize, only: [:index]

    def index 
        orders = Order.all.order(:created_at) 
        render json: orders, include: ['user', 'selected_items', 'selected_items.sku'], status: :ok
    end


    def update 
        @order.update(order_params)
        render json: @order, include: ['user', 'selected_items', 'selected_items.sku'], status: :accepted
    end


    private 

    def set_order
        @order = Order.find(params[:id])
    end

    def order_params
        params.permit(:status)
    end

end
