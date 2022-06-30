Rails.application.routes.draw do

  get "products_path", controller: "products", action: "show_all"

  get "product_path/:id", controller: "products", action: "show_product"
  
end
