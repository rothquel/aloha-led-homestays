Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/student-form', to: 'pages#student', as: 'student-form'
  get '/room-form', to: 'pages#room', as: 'room-form'
  get '/host-form', to: 'pages#host', as: 'host-form'
  get '/student-success', to: 'pages#success', as: 'student-success'
  post '/student-form', to: 'students#create'
  post '/host-form', to: 'hosts#create'
  post '/room-form', to: 'rooms#create'

  resources :hosts do
    resources :rooms
  end

  resources :rooms, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :students, :stays
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :stays do
    get 'rooms_for_host/:host_id', to: 'stays#rooms_for_host', on: :collection
  end
end
