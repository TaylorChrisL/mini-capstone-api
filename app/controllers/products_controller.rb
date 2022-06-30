class ProductsController < ApplicationController

  def show_all
    products = Product.all
    render json: products.as_json
  end

  def show_lion
    product = Product.first
    render json: product
  end

  def show_cobra
    product = Product.second
    render json: product
  end

  def show_whale
    product = Product.third
    render json: product
  end

  def show_giraffe
    product = Product.fourth
    render json: product
  end

  def show_hamster
    product = Product.fifth
    render json: product
  end

  def show_buffalo
    product = Product.last
    render json: product
  end



end
