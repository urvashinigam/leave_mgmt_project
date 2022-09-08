Rails.application.routes.draw do

   devise_for :users
   resources :users
   resources :leaves
  root to: "welcomes#welcome"
   
  # resources :hr
  # resources :employee

end
