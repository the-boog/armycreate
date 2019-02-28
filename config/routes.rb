Rails.application.routes.draw do
  root "games#index"

  resources :games do
    resources :races
  end
  
  resources :races do 
    resources :units
  end
  
  
end
