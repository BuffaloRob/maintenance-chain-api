Rails.application.routes.draw do
  resources :logs
  namespace :api do
    namespace :v1 do
      resources :users
      resources :items
      resources :categories
    end
  end  
end      
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
