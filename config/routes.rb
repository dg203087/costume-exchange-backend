Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :costumes 
      resources :categories
      get '/costumes/categories/:id', to: 'costumes#index'
      # post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
