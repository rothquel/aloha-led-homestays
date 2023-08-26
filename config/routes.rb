Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/student-form', to: 'pages#student', as: 'student-form'
  get '/host-form', to: 'pages#host', as: 'host-form'
  get '/success', to: 'pages#success', as: 'success'
  post '/student-form', to: 'students#create'

  resources :hosts do
    resources :rooms
  end

  resources :rooms, only: [:index, :show]

  resources :students, :stays
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :stays do
    get 'rooms_for_host/:host_id', to: 'stays#rooms_for_host', on: :collection
  end
end
