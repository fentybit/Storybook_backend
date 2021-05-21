Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

      resources :events, only: [:index, :create, :show, :update]
      patch '/events/:id', to: 'events#update' 
      resources :categories, only: [:index, :create, :update]
      resources :images, only: [:index, :update]
    end 
  end 
end