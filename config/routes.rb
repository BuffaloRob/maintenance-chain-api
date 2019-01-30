Rails.application.routes.draw do
  resources :items
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :logs
      resources :items do 
        resources :logs, only: [:index, :show, :new, :edit, :create]
        resources :categories, only: [:index, :show, :new, :edit, :create]
      end

      root "items#index"
    end
  end  
end      
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
