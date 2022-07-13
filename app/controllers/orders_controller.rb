class OrdersController < ApplicationController

  def index
    orders = Order.all
    render json: orders
  end

  def show
    if current_user == Order.user_id
      order = Order.find_by(id: params["id"])
      render json: order
    else
      render json: { message: "Look at your own orders bub"}, status: 406
    end
  end

  def create
    product = Product.find_by(id: params["product_id"])
    order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],     
      quantity: params["quantity"],
      subtotal: product.price,
      tax: product.tax,
      total: product.total
    )

    order.save
    render json: order
  end
end
              