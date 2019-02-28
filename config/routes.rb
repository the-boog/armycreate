Rails.application.routes.draw do
  root "games#index"

  devise_for :users

  resources :games do
    resources :races
  end
  
  # resources :races do 
  #   resources :units
  # end
  
end
