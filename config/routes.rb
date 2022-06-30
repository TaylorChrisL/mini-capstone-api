Rails.application.routes.draw do
  get "products_path", controller: "products", action: "show_all"
  
end
