Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      resources :interests 
      resources :articles 
      resources :favorites  
      resources :favorite_articles
      resources :category_choices
      resources :user_interests 
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end 
  
  
