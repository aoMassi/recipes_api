Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  resources :recipes 
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :recipes, only: [ :index, :show, :update, :create, :destroy]
    end
  end
end
