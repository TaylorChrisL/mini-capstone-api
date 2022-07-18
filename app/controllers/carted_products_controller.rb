class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    @carted_products = current_user.carted_products
    array_of_products = []
    @carted_products.each do |product|
      if product.status == "carted"
        array_of_products << product
      end
    end
    # @carted_products = carted_product.all
    render json: array_of_products
  end

  def show
    @carted_product = CartedProduct.find_by(id: params["id"])
    if current_user.id == @carted_product.user_id
      render json: @carted_product
    else
      render json: { message: "Look at your own cart bub"}, status: 406
    end
  end

  def create
    product = Product.find_by(id: params["product_id"])
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: product.id,     
      quantity: params["quantity"],
      status: "carted",
      order_id: "nil"
    )

    @carted_product.save
    render json: @carted_product
  end
  
end
