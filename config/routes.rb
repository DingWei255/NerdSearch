Rails.application.routes.draw do
  resources :cryptos
  devise_for :users
  
  get 'home/about'

  get 'home/lookup'

  post "/home/lookup" => 'home/lookup'
  
  root 'home#index'
  
end
