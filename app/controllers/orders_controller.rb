class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    # @orders = Order.all
    render :index
  end

  def show
    @order = Order.find_by(id: params["id"])
    if current_user.id == @order.user_id
      render :show
    else
      render json: { message: "Look at your own orders bub"}, status: 406
    end
  end

  def create
    product = Product.find_by(id: params["product_id"])
    calculated_subtotal = product.price * params["quantity"].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    @order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],     
      quantity: params["quantity"],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )

    @order.save
    render :show
  end
end
              