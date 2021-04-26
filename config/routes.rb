Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :dosages
      resources :users
      resources :journals
      resources :medicines

      post '/user_login', to: 'users#login'
      get '/user_persist', to: 'users#persist'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
