class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_path, notice: "Commande créée avec succès"
    else
      render "new"
    end
  end

  private

  private

  def order_params
    params.require(:order).permit(:user_id, :product_count, :delivery_status, :product_id)
  end
  
end
