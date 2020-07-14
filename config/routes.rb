Rails.application.routes.draw do
  devise_for :users
  resources :todos
  resources :tasks do 
    resources :favourites, only: [:new, :create]
  end
  root "todos#index"
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
