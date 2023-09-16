class OrdersController < ApplicationController

  before_action :set_order, only: [:show, :edit, :update, :destroy]


def index
@orders = Order.all
end
def show
@order = Order.find(params[:id])
end
def new
@order = Order.new
end

def create

@order = order.new(order_params)
if order.save
redirect_to orders _path, notice: "Commande créée avec succés"
else
render "new"
end
end

def update
    if @order.update(order_params)
    redirect_to orders_path, notice: "Commande mise a jours avec succès"
  else
    render "edit"
end
end

def destroy

@order.destroy
  redirect_to orders_path, notice: "Commande supprimé avec succès"
end

private

def order_params
  params.require(:order).permit(:user_id, :product_count, :delivery_status)
end



end
