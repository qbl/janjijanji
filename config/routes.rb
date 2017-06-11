Rails.application.routes.draw do
  root to: "home#index"
  resources :terms
  resources :people
  resources :offices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
