Rails.application.routes.draw do
  resources :items
  get 'inicio/new'

  get 'inicio/create'

  resources :profiles
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'welcome/new'

  get 'welcome/create'

  resources :usuarios
  resources :tipo_usuarios
  resources :tipo_productos
  resources :eventos
  resources :eventos
  resources :salas
  resources :locals
  resources :songs
  resources :artists
  resources :songs
  resources :artists
  resources :songs
  resources :artists
  resources :songs
  resources :artists
  resources :songs
  resources :artists
  resources :tipo_usuarios
  resources :users

  resources :welcome


  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy], defaults: { format: 'js' }
  
  root to: "inicio#index"
 


end