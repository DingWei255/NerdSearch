Rails.application.routes.draw do
  resources :cryptos
  devise_for :u