Rails.application.routes.draw do
  # get 'leaves/leave'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   devise_for :users
   resources :users
  root to: "welcomes#welcome"
   
  # resources :hr
  # resources :employee

end
