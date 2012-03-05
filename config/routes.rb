Moneymate::Application.routes.draw do
  devise_for :users
  resources :accounts
  root :to => "home#index"

end
