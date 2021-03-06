Rails.application.routes.draw do

  devise_for :users
  
  resources :movies do
    resources :favmovies, except: [:show]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "movies#index"
  
  get 'favmovies', to: 'favmovies#index'
  
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :movies
    end
  end
  
  resources :api_keys, only: [:index, :create, :destroy]

end
