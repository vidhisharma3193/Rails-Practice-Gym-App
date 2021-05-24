Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :memberships, only: [:new, :create, :show]
  resources :gyms, only: [:show, :index, :destroy]
  resources :clients, only: [:show, :index, :destroy]
end
