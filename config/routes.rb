Rails.application.routes.draw do
  root "homepages#index"

  devise_for :users, controllers: { registrations: 'registrations'}

  resources :products, only: [:index, :show]

  resources :users
end
