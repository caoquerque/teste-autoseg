Rails.application.routes.draw do
  devise_for :users
  resources :tasks, only: [:index, :new, :create, :edit, :destroy]
  resources :todos do 
    resources :favourites, only: [:new, :create]
  end
  root "todos#index"
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
