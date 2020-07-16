Rails.application.routes.draw do
  devise_for :users
  resources :todos do 
    resources :tasks, only: [:index, :new, :create]
    resources :favourites, only: [:new, :create]
  end
  resources :tasks, only: [:show, :edit, :destroy]
  root "todos#index"
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
