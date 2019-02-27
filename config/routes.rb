Rails.application.routes.draw do
  root "games#index"

  resources :games
  resources :races do 
    resources :units
  end
  
  
end
