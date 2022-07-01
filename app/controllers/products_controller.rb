class ProductsController < ApplicationController

  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: "Kangaroo"
      price: 589
      image_url: "https://i.pinimg.com/originals/e6/a3/7e/e6a37e83aa99dbb409e54767d7ea9aa7.jpg"
      description: "A boxing Kangaroo straight from the outback (Boxing gloves included)"
    )

    product.save
    render :json product.as_json


end
