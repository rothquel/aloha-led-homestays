Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :hosts do
    resources :rooms
  end

  resources :rooms, only: [:index, :show]

  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
