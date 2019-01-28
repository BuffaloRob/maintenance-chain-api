Rails.application.routes.draw do
  resources :categories
  namespace :api do
    namespace :v1 do
      resources :users
      resources :items
    end
  end  
end      
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
