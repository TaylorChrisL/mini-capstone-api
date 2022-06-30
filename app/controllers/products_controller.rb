class ProductsController < ApplicationController

  def show_all
    products = Product.all
    render json: products.as_json
  end

  def show_product
    product = Product.find_by(id: params["id"])
    render json: product
  end



end
