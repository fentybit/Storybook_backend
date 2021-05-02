Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update]
      resources :events, only: [:create, :show, :update, :destroy]
      resources :categories, only: [:create, :show, :update, :destroy]
      resources :images, only: [:destroy]
    end 
  end 
end