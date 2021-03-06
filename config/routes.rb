Rails.application.routes.draw do

  root "static_pages#home"
  #get 'static_pages/home'

  get    "/login",  to: "sessions#new"
  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get '/signup', to: "users#new"
  post '/signup', to: "users#create"
  patch '/users/:id/edit', to: "users#update"
  resources :users, only: [:index, :show, :edit, :destroy ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
