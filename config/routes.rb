Rails.application.routes.draw do

  get "products_path", controller: "products", action: "show_all"

  get "lion_path", controller: "products", action: "show_lion"

  get "cobra_path", controller: "products", action: "show_cobra"

  get "whale_path", controller: "products", action: "show_whale"

  get "giraffe_path", controller: "products", action: "show_giraffe"

  get "hamster_path", controller: "products", action: "show_hamster"

  get "buffalo_path", controller: "products", action: "show_buffalo"
  
end
