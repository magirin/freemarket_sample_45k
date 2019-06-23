Rails.application.routes.draw do
  root 'products#create' 
  resources :products, only: [:index, :create, :edit, :update, :destroy]
end
