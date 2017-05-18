Rails.application.routes.draw do
  root "homepages#index"

  devise_for :users, controllers: { registrations: 'registrations'}

  resources :categories, only: [:index, :show]
  
  resources :products, only: [:index, :show]

  resources :users
end
