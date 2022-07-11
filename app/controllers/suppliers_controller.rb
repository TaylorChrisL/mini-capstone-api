class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render :index
  end

  def show
    @supplier = Supplier.find_by(id: params["id"])
    render template: "suppliers/show"
  end

  def create
    @supplier = Supplier.new(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"]
    )

    if @supplier.save
      render template: "suppliers/show"
    else
      render json: { errors: @supplier.errors.full_messages }, status: 406
    end
  end

  def update
    @supplier = Supplier.find_by(id: params["id"])

    @supplier.name = params["name"] || @supplier.name
    @supplier.email = params["email"] || @supplier.email
    @supplier.phone_number = params["phone_number"] || @supplier.phone_number

    if @supplier.save
      render template: "suppliers/show"
    else
      render json: { errors: @supplier.errors.full_messages }, status: 406
    end
  end

  def destroy
    supplier = Supplier.find_by(id: params["id"])
    supplier.destroy

    render json: {message: "Successfully Obliterated!"}
  end
end
