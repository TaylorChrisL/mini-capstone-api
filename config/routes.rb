Rails.application.routes.draw do

  resources :products, defaults: { format: :json }
  resources :suppliers, defaults: { format: :json }
  resources :images, defaults: { format: :json }

  post "/users" => "users#create", default: { fortmat: :json }
  post "/sessions" => "sessions#create", default: { format: :json }
  
end
