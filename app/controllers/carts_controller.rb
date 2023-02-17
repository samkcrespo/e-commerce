class CartsController < ApplicationController
    skip_before_action :authorize

    def show 
        if session.include? :cart_id
            set_cart
        else
            create_cart
        end

        render json: @cart, include: ['selected_items', 'selected_items.sku']
    end

    def update
        sku = Sku.find_by(product_id: params[:product_id], color: params[:color], size: params[:size])

        if sku 
            cartItem = @cart.selected_items.find_by(sku_id: sku.id)
            if cartItem 
                 newQuantity = params[:quantity] + cartItem.quantity
                 cartItem.update(quantity: newQuantity)
            else 
                 newItem = @cart.selected_items.create(quantity: params[:quantity], sku_id: sku.id)
            end
        else
            render json: { errors: ['Sku Not Found'] }, status: :not_found
        end

        render json: @cart, include: ['selected_items', 'selected_items.sku'], status: :accepted
        
    end

    def delete_item 
        item = set_selected_item
        item.destroy
        render json: @cart, include: ['selected_items', 'selected_items.sku'], status: :accepted
    end

    def update_item
        item = set_selected_item
        item.update(quantity: params[:quantity])
        render json: @cart, include: ['selected_items', 'selected_items.sku'], status: :accepted
    end

    private

    def set_cart
        @cart = Cart.find_by(id: session[:cart_id])
    end

    def set_selected_item
        @cart.selected_items.find_by(id: params[:selected_item_id])
    end

    def create_cart
        @cart = Cart.create
        session[:cart_id] = @cart.id
        @cart
    end
end
